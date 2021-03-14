(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4501
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4502
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4503
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4504
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4505
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4506
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4507
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4508
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4509
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4510
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4511
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4512
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4513
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4514
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4515
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4516
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4517
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4518
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4519
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4520
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4521
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4522
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4523
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4524
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4525
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4526
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4527
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4528
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4529
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4530
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4531
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4532
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4533
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4534
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4535
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4536
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4537
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4538
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4539
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4540
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4541
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4542
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4543
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4544
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4545
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4546
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4547
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4548
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4549
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4550
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4551
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4552
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4553
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4554
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4555
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4556
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4557
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4558
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4559
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4560
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4561
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4562
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4563
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4564
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4565
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4566
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4567
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4568
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4569
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4570
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4571
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4572
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4573
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4574
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4575
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4576
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4577
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4578
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4579
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4580
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4581
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4582
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4583
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4584
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4585
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4586
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4587
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4588
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4589
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4590
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4591
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4592
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4593
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4594
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4595
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4596
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4597
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4598
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4599
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4600
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4601
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4602
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4603
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4604
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4605
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4606
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4607
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4608
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4609
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4610
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4611
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4612
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4613
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4614
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4615
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4616
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4617
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4618
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4619
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4620
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4621
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4622
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4623
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4624
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4625
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4626
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4627
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4628
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4629
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4630
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4631
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4632
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4633
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4634
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4635
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4636
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4637
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4638
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4639
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4640
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4641
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4642
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4643
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4644
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4645
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4646
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4647
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4648
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4649
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4650
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4651
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4652
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4653
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4654
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4655
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4656
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4657
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4658
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4659
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4660
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4661
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4662
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4663
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4664
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4665
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4666
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4667
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4668
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4669
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4670
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4671
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4672
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4673
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4674
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4675
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4676
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4677
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4678
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4679
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4680
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4681
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4682
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4683
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4684
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4685
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4686
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4687
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4688
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4689
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4690
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4691
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4692
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4693
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4694
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4695
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4696
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4697
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4698
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4699
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4700
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4701
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4702
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4703
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4704
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4705
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4706
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4707
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4708
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4709
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4710
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4711
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4712
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4713
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4714
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4715
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4716
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4717
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4718
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4719
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4720
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4721
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4722
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4723
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4724
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4725
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4726
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4727
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4728
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4729
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4730
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4731
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4732
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4733
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4734
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4735
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4736
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4737
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4738
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4739
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4740
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4741
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4742
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4743
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4744
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4745
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4746
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4747
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4748
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4749
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4750
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4751
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4752
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4753
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4754
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4755
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4756
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4757
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4758
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4759
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4760
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4761
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4762
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4763
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4764
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4765
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4766
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4767
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4768
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4769
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4770
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4771
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4772
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4773
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4774
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4775
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4776
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4777
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4778
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4779
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4780
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4781
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4782
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4783
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4784
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4785
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4786
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4787
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4788
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4789
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4790
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4791
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4792
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4793
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4794
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4795
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4796
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4797
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4798
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4799
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4800
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4801
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4802
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4803
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4804
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4805
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4806
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4807
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4808
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4809
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4810
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4811
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4812
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4813
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4814
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4815
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4816
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4817
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4818
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4819
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4820
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4821
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4822
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4823
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4824
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4825
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4826
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4827
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4828
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4829
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4830
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4831
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4832
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4833
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4834
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4835
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4836
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4837
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4838
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4839
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4840
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4841
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4842
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4843
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4844
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4845
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4846
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4847
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4848
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4849
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4850
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4851
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4852
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4853
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4854
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4855
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4856
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4857
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4858
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4859
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4860
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4861
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4862
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4863
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4864
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4865
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4866
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4867
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4868
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4869
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4870
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4871
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4872
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4873
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4874
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4875
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4876
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4877
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4878
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4879
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4880
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4881
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4882
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4883
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4884
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4885
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4886
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4887
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4888
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4889
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4890
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4891
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4892
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4893
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4894
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4895
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4896
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4897
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4898
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4899
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4900
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4901
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4902
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4903
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4904
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4905
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4906
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4907
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4908
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4909
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4910
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4911
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4912
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4913
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4914
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4915
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4916
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4917
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4918
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4919
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4920
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4921
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4922
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4923
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4924
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4925
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4926
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4927
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4928
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4929
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4930
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4931
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4932
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4933
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4934
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4935
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4936
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4937
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4938
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4939
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4940
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4941
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4942
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4943
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4944
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4945
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4946
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4947
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4948
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4949
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4950
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4951
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4952
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4953
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4954
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4955
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4956
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4957
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4958
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4959
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4960
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4961
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4962
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4963
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4964
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4965
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4966
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4967
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4968
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4969
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4970
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4971
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4972
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4973
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4974
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4975
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4976
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4977
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4978
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4979
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4980
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4981
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4982
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4983
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4984
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4985
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4986
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4987
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4988
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4989
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4990
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4991
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4992
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4993
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4994
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4995
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4996
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4997
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4998
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 4999
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, `b`.`station` ASC
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 5000
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
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