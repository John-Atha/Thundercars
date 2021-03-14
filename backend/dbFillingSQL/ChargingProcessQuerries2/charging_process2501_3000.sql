(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2501
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2502
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2503
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2504
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2505
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2506
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2507
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2508
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2509
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2510
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2511
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2512
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2513
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2514
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2515
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2516
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2517
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2518
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2519
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2520
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2521
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2522
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2523
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2524
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2525
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2526
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2527
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2528
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2529
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2530
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2531
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2532
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2533
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2534
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2535
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2536
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2537
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2538
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2539
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2540
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2541
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2542
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2543
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2544
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2545
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2546
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2547
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2548
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2549
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2550
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2551
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2552
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2553
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2554
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2555
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2556
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2557
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2558
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2559
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2560
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2561
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2562
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2563
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2564
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2565
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2566
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2567
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2568
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2569
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2570
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2571
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2572
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2573
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2574
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2575
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2576
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2577
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2578
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2579
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2580
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2581
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2582
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2583
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2584
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2585
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2586
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2587
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2588
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2589
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2590
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2591
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2592
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2593
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2594
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2595
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2596
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2597
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2598
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2599
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2600
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2601
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2602
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2603
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2604
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2605
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2606
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2607
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2608
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2609
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2610
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2611
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2612
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2613
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2614
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2615
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2616
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2617
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2618
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2619
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2620
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2621
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2622
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2623
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2624
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2625
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2626
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2627
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2628
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2629
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2630
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2631
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2632
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2633
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2634
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2635
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2636
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2637
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2638
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2639
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2640
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2641
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2642
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2643
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2644
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2645
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2646
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2647
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2648
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2649
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2650
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2651
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2652
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2653
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2654
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2655
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2656
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2657
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2658
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2659
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2660
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2661
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2662
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2663
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2664
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2665
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2666
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2667
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2668
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2669
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2670
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2671
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2672
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2673
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2674
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2675
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2676
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2677
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2678
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2679
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2680
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2681
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2682
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2683
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2684
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2685
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2686
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2687
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2688
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2689
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2690
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2691
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2692
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2693
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2694
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2695
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2696
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2697
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2698
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2699
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2700
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2701
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2702
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2703
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2704
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2705
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2706
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2707
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2708
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2709
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2710
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2711
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2712
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2713
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2714
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2715
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2716
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2717
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2718
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2719
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2720
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2721
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2722
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2723
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2724
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2725
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2726
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2727
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2728
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2729
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2730
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2731
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2732
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2733
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2734
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2735
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2736
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2737
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2738
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2739
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2740
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2741
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2742
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2743
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2744
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2745
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2746
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2747
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2748
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2749
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2750
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2751
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2752
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2753
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2754
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2755
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2756
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2757
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2758
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2759
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2760
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2761
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2762
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2763
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2764
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2765
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2766
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2767
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2768
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2769
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2770
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2771
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2772
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2773
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2774
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2775
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2776
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2777
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2778
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2779
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2780
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2781
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2782
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2783
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2784
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2785
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2786
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2787
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2788
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2789
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2790
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2791
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2792
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2793
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2794
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2795
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2796
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2797
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2798
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2799
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2800
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2801
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2802
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2803
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2804
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2805
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2806
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2807
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2808
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2809
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2810
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2811
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2812
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2813
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2814
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2815
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2816
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2817
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2818
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2819
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2820
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2821
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2822
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2823
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2824
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2825
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2826
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2827
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2828
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2829
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2830
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2831
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2832
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2833
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2834
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2835
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2836
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2837
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2838
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2839
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2840
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2841
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2842
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2843
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2844
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2845
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2846
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2847
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2848
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2849
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2850
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2851
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2852
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2853
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2854
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2855
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2856
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2857
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2858
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2859
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2860
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2861
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2862
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2863
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2864
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2865
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2866
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2867
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2868
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2869
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2870
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2871
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2872
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2873
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2874
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2875
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2876
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2877
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2878
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2879
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2880
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2881
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2882
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2883
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2884
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2885
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2886
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2887
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2888
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2889
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2890
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2891
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2892
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2893
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2894
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2895
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2896
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2897
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2898
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2899
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2900
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2901
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2902
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2903
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2904
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2905
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2906
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2907
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2908
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2909
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2910
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2911
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2912
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2913
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2914
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2915
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2916
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2917
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2918
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2919
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2920
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2921
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2922
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2923
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2924
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2925
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2926
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2927
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2928
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2929
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2930
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2931
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2932
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2933
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2934
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2935
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2936
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2937
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2938
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2939
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2940
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2941
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2942
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2943
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2944
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2945
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2946
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2947
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2948
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2949
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2950
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2951
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2952
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2953
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2954
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2955
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2956
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2957
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2958
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2959
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2960
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2961
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2962
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2963
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2964
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2965
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2966
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2967
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2968
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2969
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2970
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2971
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2972
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2973
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2974
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2975
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2976
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2977
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2978
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2979
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2980
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2981
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2982
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2983
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2984
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2985
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2986
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2987
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2988
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2989
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2990
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2991
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2992
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2993
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2994
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2995
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2996
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2997
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2998
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 2999
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 3000
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
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