(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11501
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11502
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11503
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11504
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11505
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11506
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11507
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11508
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11509
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11510
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11511
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11512
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11513
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11514
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11515
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11516
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11517
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11518
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11519
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11520
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11521
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11522
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11523
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11524
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11525
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11526
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11527
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11528
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11529
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11530
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11531
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11532
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11533
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11534
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11535
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11536
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11537
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11538
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11539
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11540
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11541
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11542
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11543
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11544
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11545
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11546
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11547
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11548
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11549
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11550
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11551
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11552
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11553
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11554
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11555
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11556
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11557
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11558
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11559
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11560
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11561
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11562
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11563
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11564
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11565
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11566
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11567
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11568
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11569
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11570
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11571
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11572
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11573
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11574
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11575
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11576
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11577
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11578
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11579
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11580
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11581
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11582
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11583
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11584
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11585
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11586
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11587
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11588
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11589
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11590
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11591
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11592
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11593
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11594
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11595
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11596
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11597
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11598
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11599
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11600
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11601
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11602
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11603
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11604
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11605
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11606
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11607
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11608
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11609
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11610
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11611
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11612
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11613
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11614
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11615
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11616
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11617
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11618
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11619
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11620
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11621
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11622
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11623
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11624
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11625
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11626
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11627
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11628
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11629
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11630
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11631
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11632
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11633
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11634
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11635
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11636
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11637
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11638
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11639
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11640
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11641
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11642
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11643
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11644
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11645
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11646
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11647
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11648
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11649
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11650
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11651
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11652
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11653
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11654
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11655
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11656
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11657
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11658
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11659
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11660
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11661
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11662
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11663
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11664
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11665
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11666
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11667
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11668
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11669
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11670
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11671
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11672
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11673
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11674
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11675
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11676
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11677
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11678
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11679
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11680
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11681
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11682
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11683
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11684
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11685
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11686
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11687
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11688
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11689
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11690
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11691
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11692
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11693
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11694
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11695
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11696
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11697
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11698
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11699
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11700
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11701
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11702
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11703
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11704
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11705
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11706
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11707
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11708
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11709
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11710
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11711
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11712
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11713
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11714
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11715
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11716
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11717
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11718
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11719
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11720
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11721
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11722
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11723
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11724
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11725
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11726
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11727
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11728
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11729
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11730
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11731
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11732
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11733
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11734
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11735
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11736
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11737
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11738
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11739
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11740
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11741
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11742
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11743
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11744
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11745
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11746
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11747
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11748
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11749
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11750
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11751
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11752
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11753
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11754
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11755
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11756
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11757
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11758
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11759
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11760
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11761
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11762
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11763
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11764
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11765
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11766
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11767
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11768
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11769
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11770
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11771
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11772
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11773
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11774
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11775
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11776
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11777
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11778
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11779
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11780
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11781
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11782
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11783
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11784
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11785
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11786
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11787
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11788
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11789
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11790
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11791
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11792
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11793
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11794
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11795
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11796
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11797
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11798
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11799
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11800
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11801
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11802
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11803
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11804
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11805
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11806
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11807
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11808
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11809
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11810
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11811
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11812
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11813
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11814
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11815
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11816
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11817
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11818
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11819
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11820
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11821
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11822
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11823
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11824
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11825
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11826
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11827
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11828
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11829
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11830
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11831
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11832
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11833
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11834
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11835
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11836
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11837
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11838
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11839
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11840
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11841
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11842
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11843
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11844
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11845
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11846
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11847
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11848
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11849
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11850
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11851
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11852
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11853
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11854
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11855
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11856
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11857
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11858
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11859
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11860
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11861
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11862
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11863
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11864
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11865
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11866
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11867
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11868
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11869
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11870
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11871
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11872
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11873
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11874
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11875
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11876
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11877
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11878
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11879
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11880
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11881
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11882
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11883
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11884
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11885
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11886
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11887
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11888
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11889
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11890
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11891
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11892
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11893
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11894
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11895
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11896
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11897
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11898
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11899
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11900
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11901
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11902
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11903
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11904
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11905
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11906
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11907
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11908
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11909
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11910
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11911
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11912
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11913
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11914
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11915
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11916
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11917
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11918
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11919
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11920
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11921
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11922
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11923
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11924
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11925
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11926
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11927
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11928
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11929
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11930
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11931
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11932
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11933
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11934
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11935
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11936
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11937
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11938
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11939
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11940
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11941
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11942
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11943
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11944
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11945
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11946
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11947
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11948
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11949
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11950
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11951
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11952
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11953
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11954
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11955
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11956
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11957
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11958
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11959
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11960
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11961
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11962
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11963
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11964
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11965
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11966
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11967
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11968
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11969
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11970
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11971
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11972
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11973
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11974
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11975
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11976
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11977
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11978
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11979
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11980
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11981
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11982
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11983
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11984
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11985
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11986
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11987
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11988
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11989
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11990
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11991
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11992
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11993
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11994
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11995
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11996
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11997
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11998
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11999
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 12000
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        ;