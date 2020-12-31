#!/bin/bash

#set your username!

Get-Content ac_charger.sql | mysql -u root db
Get-Content dc_charger.sql | mysql -u root db
Get-Content countries.sql | mysql -u root db
Get-Content ac_charger_ports.sql | mysql -u root db
Get-Content dc_ports_ids.sql | mysql -u root db
Get-Content power_per_charging.sql | mysql -u root 
Get-Content vehicles.sql | mysql -u root db
Get-Content user_addresses1.sql |mysql -u root db
Get-Content users.sql |mysql -u root db
Get-Content user_has_vehicle.sql |mysql -u root db
Get-Content usage_type.sql |mysql -u root db
Get-Content submission_status.sql |mysql -u root db
Get-Content status_type.sql |mysql -u root db
Get-Content operators.sql |mysql -u root db
Get-Content station_owners.sql |mysql -u root db
Get-Content current_providers.sql |mysql -u root db
