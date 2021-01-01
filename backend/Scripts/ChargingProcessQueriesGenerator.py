import os
limit=12001
filenames = []
# --- adjust the path ---
path = "C:/Users/atha/Desktop/softeng/projectCode/backend/dbFillingSQL/ChargingProcessQueries/"
# -----------------------
fs = []

for i in range(1, limit+1): 
    filenames.append("ChargingProcessQuery%s" %i)
    filenames[i-1] = os.path.join(path, filenames[i-1] + ".sql")

user=1
while user<limit:
    fs.append(open(filenames[user-1], "a", encoding='utf-8'))
    res = '''SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
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

      (SELECT `charging_station`.`id` AS `station`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `charging_station`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 10;
      
      ''' %user

    fs[user-1].write(res)
    fs[user-1].close()
    user = user + 1
