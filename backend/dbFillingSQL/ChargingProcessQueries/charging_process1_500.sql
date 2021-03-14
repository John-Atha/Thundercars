(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 1
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 2
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 3
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 4
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 5
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 6
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 7
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 8
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 9
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 10
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 11
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 12
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 13
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 14
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 15
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 16
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 17
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 18
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 19
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 20
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 21
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 22
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 23
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 24
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 25
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 26
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 27
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 28
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 29
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 30
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 31
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 32
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 33
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 34
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 35
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 36
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 37
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 38
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 39
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 40
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 41
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 42
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 43
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 44
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 45
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 46
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 47
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 48
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 49
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 50
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 51
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 52
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 53
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 54
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 55
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 56
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 57
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 58
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 59
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 60
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 61
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 62
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 63
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 64
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 65
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 66
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 67
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 68
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 69
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 70
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 71
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 72
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 73
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 74
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 75
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 76
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 77
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 78
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 79
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 80
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 81
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 82
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 83
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 84
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 85
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 86
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 87
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 88
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 89
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 90
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 91
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 92
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 93
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 94
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 95
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 96
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 97
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 98
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 99
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 100
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 101
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 102
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 103
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 104
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 105
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 106
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 107
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 108
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 109
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 110
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 111
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 112
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 113
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 114
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 115
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 116
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 117
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 118
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 119
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 120
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 121
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 122
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 123
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 124
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 125
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 126
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 127
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 128
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 129
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 130
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 131
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 132
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 133
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 134
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 135
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 136
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 137
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 138
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 139
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 140
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 141
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 142
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 143
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 144
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 145
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 146
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 147
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 148
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 149
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 150
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 151
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 152
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 153
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 154
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 155
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 156
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 157
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 158
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 159
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 160
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 161
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 162
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 163
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 164
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 165
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 166
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 167
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 168
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 169
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 170
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 171
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 172
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 173
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 174
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 175
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 176
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 177
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 178
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 179
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 180
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 181
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 182
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 183
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 184
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 185
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 186
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 187
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 188
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 189
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 190
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 191
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 192
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 193
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 194
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 195
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 196
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 197
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 198
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 199
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 200
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 201
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 202
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 203
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 204
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 205
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 206
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 207
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 208
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 209
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 210
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 211
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 212
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 213
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 214
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 215
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 216
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 217
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 218
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 219
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 220
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 221
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 222
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 223
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 224
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 225
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 226
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 227
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 228
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 229
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 230
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 231
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 232
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 233
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 234
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 235
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 236
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 237
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 238
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 239
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 240
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 241
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 242
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 243
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 244
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 245
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 246
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 247
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 248
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 249
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 250
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 251
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 252
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 253
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 254
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 255
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 256
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 257
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 258
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 259
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 260
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 261
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 262
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 263
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 264
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 265
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 266
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 267
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 268
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 269
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 270
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 271
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 272
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 273
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 274
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 275
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 276
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 277
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 278
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 279
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 280
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 281
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 282
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 283
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 284
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 285
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 286
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 287
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 288
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 289
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 290
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 291
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 292
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 293
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 294
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 295
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 296
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 297
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 298
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 299
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 300
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 301
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 302
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 303
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 304
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 305
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 306
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 307
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 308
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 309
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 310
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 311
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 312
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 313
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 314
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 315
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 316
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 317
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 318
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 319
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 320
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 321
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 322
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 323
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 324
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 325
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 326
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 327
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 328
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 329
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 330
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 331
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 332
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 333
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 334
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 335
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 336
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 337
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 338
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 339
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 340
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 341
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 342
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 343
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 344
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 345
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 346
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 347
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 348
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 349
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 350
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 351
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 352
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 353
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 354
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 355
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 356
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 357
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 358
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 359
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 360
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 361
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 362
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 363
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 364
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 365
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 366
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 367
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 368
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 369
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 370
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 371
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 372
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 373
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 374
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 375
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 376
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 377
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 378
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 379
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 380
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 381
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 382
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 383
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 384
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 385
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 386
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 387
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 388
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 389
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 390
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 391
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 392
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 393
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 394
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 395
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 396
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 397
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 398
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 399
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 400
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 401
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 402
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 403
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 404
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 405
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 406
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 407
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 408
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 409
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 410
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 411
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 412
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 413
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 414
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 415
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 416
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 417
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 418
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 419
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 420
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 421
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 422
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 423
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 424
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 425
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 426
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 427
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 428
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 429
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 430
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 431
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 432
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 433
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 434
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 435
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 436
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 437
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 438
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 439
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 440
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 441
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 442
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 443
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 444
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 445
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 446
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 447
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 448
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 449
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 450
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 451
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 452
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 453
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 454
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 455
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 456
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 457
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 458
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 459
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 460
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 461
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 462
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 463
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 464
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 465
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 466
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 467
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 468
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 469
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 470
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 471
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 472
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 473
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 474
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 475
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 476
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 477
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 478
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 479
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 480
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 481
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 482
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 483
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 484
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 485
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 486
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 487
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 488
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 489
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 490
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 491
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 492
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 493
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 494
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 495
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 496
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 497
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 498
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 499
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
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 500
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
      ;