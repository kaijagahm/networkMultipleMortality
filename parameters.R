# Script to define parameters for filtering
MaxSpeedPermitted <- 120 #in movebank units (m/s??) anything above this will be filtered

VulturesToPlotMap <- 10:15  #out of the vultures in the DB which one to plot? choose a few out of the 83

DistThreshold_coFeeding <- 50 # changed from 2000 in meters ---at what distance two individuals are interacting ~ identifying another vulture on the Ohad 
# (Colin Pennyquick, 1974)

DistThreshold_coFeeding <- 50

TimeThreshold <- '10 minutes' #in this format 'XX units'-- for spatsoc -- for Ohads, maybe 2 mins?? - timegroups - temporally overlapping

MinCoocurForValue <- 2 #minimal number of coocurences for considering a viable pair

minCrossings <- 2

roostbuffer <- 50 # in meters

feedBuff <- 100

headingThreshold <- 360

satCount <- 3

colsToRemove <- c("sensor_type_id", "taxon_canonical_name", "nick_name", "earliest_date_born", "sensor", "optional",
                  "sensor_type", "mw_activity_count", "eobs_accelerations_raw", "eobs_acceleration_sampling_frequency_per_axis",
                  "eobs_acceleration_axes", "argos_valid_location_algorithm", "argos_sensor_4", "argos_sensor_3", "argos_sensor_2",
                  "argos_sensor_1", "argos_semi_minor", "argos_semi_major", "argos_pass_duration", "argos_orientation", "argos_nopc",
                  "argos_lat1", "argos_lat2", "1084088", "argos_lon1", "argos_lon2", "argos_nb_mes", "argos_nb_mes_120",
                  "eobs_key_bin_checksum", "eobs_fix_battery_voltage", "eobs_battery_voltage", "eobs_status",
                  "eobs_start_timestamp", "eobs_type_of_fix", "eobs_used_time_to_get_fix", "eobs_temperature",
                  "gps_dop", "magnetic_field_raw_x", "magnetic_field_raw_y", "magnetic_field_raw_z", "ornitela_transmission_protocol",
                  "tag_voltage", "algorithm_marked_outlier", "argos_altitude", "argos_best_level", "argos_lc", "argos_iq",
                  "argos_gdop", "argos_error_radius", "argos_calcul_freq", "location_lat.1", "location_long.1", "timestamps", "height_raw",
                  "barometric_pressure", "barometric_height", "battery_charging_current", "eobs_activity", "manually_marked_outlier",
                  "eobs_activity_samples", "acceleration_raw_y", "battery_charge_percent", "data_decoding_software", "gps_vdop", "height_above_ellipsoid",
                  'acceleration_raw_x','acceleration_raw_z', "acceleration_raw_z", "eobs_horizontal_accuracy_estimate", "eobs_speed_accuracy_estimate")