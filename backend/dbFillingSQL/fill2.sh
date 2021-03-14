#!/bin/bash

mysql -u root db < ac_charger.sql
mysql -u root db < dc_charger.sql;
mysql -u root db < countries.sql;
mysql -u root db < addressesall.sql;
mysql -u root db < ac_charger_ports.sql;
mysql -u root db < dc_ports_ids.sql;
mysql -u root db < power_per_charging.sql; 
mysql -u root db < vehicles.sql;
mysql -u root db < user_addresses1.sql;
mysql -u root db < users.sql;
mysql -u root db < user_has_vehicle.sql;
mysql -u root db < usage_type.sql;
mysql -u root db < submission_status.sql;
mysql -u root db < status_type.sql;
mysql -u root db < operators.sql;
mysql -u root db < station_owners.sql;
mysql -u root db < current_providers.sql;
mysql -u root db < connection_type.sql;
mysql -u root db < level.sql;
mysql -u root db < current_type.sql;
mysql -u root db < charging_spot.sql;
mysql -u root db < mystations.sql
mysql -u root db < charging_station_spots.sql
