[Context]
2022-04-19: KG forked this repo from Nitika in order to get access to the code to create networks. Later I'll write a new README that describes the code for the current project, EEB C219B network modeling.

# VulturesMovementAnalysis_manuscript1
Open code for creating social interaction networks based on long term GPS location data of vultures in Israel to help management decisions of the Israel Nature and Parks Authority under the NSF-BSF grant.

This repository contains multiple steps to arrive at the result that vultures interacting in different situations like co-flying, co-roosting and co-feeding may contribute different information to the global social structure that may influence population-level outcomes like disease spread and information exchange.

1.	**Data extraction** from MoveBank to only work on a subset of the long-term data. Data extracted from the 'Ornitela_Vultures_Gyps_fulvus_TAU_UCLA_Israel' study

2.	**Data filtering** 
       a. for the breeding season December 2020-June 2021. 
       b. only locations that were in and around Israel so as to capture inter-individual interactions in a landscape with majority of tagged vultures. 
       c. Only including vultures that were tracked for a long enough duration during this period (at least 1/3 of the days) 
       d. removing data that did not meet confidence standards or had faulty observations for example a speed of >120 m/s

3. Situation-specific **Data analysis** 
       a. Co-Flying: Speed>5m/s; 
                     Distance threshold to consider an interaction during co-flying<1000m; 
                     Time threshold to make sure vultures overlapped temporally = 10 minutes
               
       b. Nocturnal ground interactions (Co-Roosting): Speed<=5m/s; 
                                                       Distance threshold - vultures that slept in the same roost on a given date;
                                                       Time threshold - the vultures roosted together on the same date; Roost buffer = 50m.
                                                       
       i. Assigned last locations of each vulture on each night to a roost polygon
       ii. If locations unassigned, found the first location for the morning after (location of where a vulture woke up the next day)
                   ---> assigned to a roost polygon
       iii. If still unassigned, found the average location of the last location at night and first location the following morning and then
                   ----> assigned to a roost polygon
       iv. If owing to the 50m buffer around roost polygons, a location is assigned to >1 roost, then remove duplicates and 
                   -----> assign the location to the closer roost polygon 
                   
        c. Diurnal ground interactions (Co-Feeding): Speed<=5m/s; 
                                                     Distance threshold = 50m; 
                                                     Time threshold = 10 minutes; Feeding station buffer = 100m; Roost buffer = 50m
           All non-flight locations that fall outside the roost polygons and thus do not include roosting locations may include on-ground feeding.
               
    **Hypothesis testing through Simulations** 
    Created reference distributions by doing permutation tests on each social network as well as the aggregate network to determine the statistical significance by computing a p-value as the proportion of iterations in which the observed Spearman’s correlation coefficient (ρ) was larger or smaller than 95% of the ρ coefficients in the permutated data.

4.	**Data visualization** 
   	All possible interactions of vultures that were spatially or temporally overlapping according to situation-specific analysis were converted to edgelists and then simple ratio index (SRI) which divides the observed associations of pair of vultures divided by the total possible time they could have been associated was used to create social networks in the different social situations.


