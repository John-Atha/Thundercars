import os
limit=500

# --- adjust the path ---
path = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL/ChargingProcessQueries/"
# -----------------------
import os

filename1 = "charging_process"
filename1 = os.path.join(path, filename1 + ".sql")
f1 = open(filename1, "a", encoding='utf-8')

user=1
while user<limit:
    res = '''(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = %s
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      ''' %user
    if user<limit-1:
        res = res + "UNION\n"
    elif user==limit-1:
        res = res + ";"
    f1.write(res)
    user = user + 1
