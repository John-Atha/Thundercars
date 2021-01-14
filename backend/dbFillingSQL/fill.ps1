#First,you have to run Windows Powershell as administrator and execute the following command:
#   > Set-ExecutionPolicy RemoteSigned

#Then run in your terminal inside the directory softeng-ntua\backend\dbFillingSQL the command:
#   > & ./fill.ps1

#If your username is not root you have to change it below after "-u" in every command!

Get-Content ac_charger.sql | mysql -u root db;
Get-Content dc_charger.sql | mysql -u root db;
Get-Content countries.sql | mysql -u root db;
Get-Content addressesall.sql | mysql -u root db;
Get-Content ac_charger_ports.sql | mysql -u root db;
Get-Content dc_ports_ids.sql | mysql -u root db;
Get-Content power_per_charging.sql | mysql -u root; 
Get-Content vehicles.sql | mysql -u root db;
Get-Content user_addresses1.sql |mysql -u root db;
Get-Content users.sql |mysql -u root db;
Get-Content user_has_vehicle.sql |mysql -u root db;
Get-Content usage_type.sql |mysql -u root db;
Get-Content submission_status.sql |mysql -u root db;
Get-Content status_type.sql |mysql -u root db;
Get-Content operators.sql |mysql -u root db;
Get-Content station_owners.sql |mysql -u root db;
Get-Content current_providers.sql |mysql -u root db;
Get-Content connection_type.sql |mysql -u root db;
Get-Content level.sql |mysql -u root db;
Get-Content current_type.sql |mysql -u root db;
Get-Content charging_spot.sql |mysql -u root db;
Get-Content stations.sql |mysql -u root db;
Get-Content charging_station_spots.sql | mysql -u root db;
Get-Content connection_types2.sql | mysql -u root db;
Get-Content charging_process1.sql | mysql -u root db;
Get-Content charging_process2.sql | mysql -u root db;