(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11001
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11002
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11003
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11004
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11005
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11006
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11007
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11008
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11009
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11010
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11011
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11012
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11013
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11014
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11015
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11016
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11017
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11018
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11019
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11020
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11021
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11022
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11023
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11024
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11025
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11026
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11027
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11028
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11029
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11030
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11031
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11032
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11033
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11034
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11035
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11036
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11037
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11038
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11039
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11040
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11041
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11042
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11043
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11044
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11045
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11046
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11047
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11048
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11049
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11050
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11051
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11052
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11053
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11054
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11055
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11056
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11057
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11058
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11059
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11060
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11061
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11062
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11063
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11064
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11065
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11066
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11067
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11068
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11069
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11070
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11071
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11072
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11073
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11074
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11075
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11076
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11077
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11078
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11079
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11080
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11081
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11082
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11083
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11084
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11085
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11086
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11087
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11088
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11089
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11090
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11091
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11092
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11093
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11094
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11095
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11096
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11097
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11098
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11099
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11100
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11101
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11102
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11103
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11104
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11105
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11106
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11107
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11108
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11109
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11110
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11111
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11112
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11113
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11114
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11115
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11116
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11117
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11118
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11119
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11120
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11121
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11122
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11123
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11124
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11125
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11126
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11127
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11128
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11129
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11130
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11131
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11132
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11133
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11134
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11135
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11136
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11137
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11138
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11139
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11140
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11141
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11142
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11143
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11144
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11145
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11146
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11147
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11148
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11149
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11150
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11151
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11152
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11153
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11154
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11155
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11156
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11157
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11158
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11159
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11160
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11161
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11162
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11163
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11164
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11165
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11166
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11167
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11168
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11169
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11170
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11171
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11172
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11173
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11174
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11175
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11176
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11177
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11178
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11179
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11180
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11181
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11182
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11183
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11184
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11185
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11186
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11187
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11188
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11189
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11190
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11191
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11192
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11193
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11194
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11195
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11196
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11197
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11198
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11199
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11200
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11201
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11202
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11203
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11204
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11205
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11206
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11207
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11208
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11209
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11210
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11211
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11212
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11213
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11214
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11215
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11216
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11217
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11218
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11219
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11220
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11221
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11222
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11223
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11224
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11225
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11226
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11227
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11228
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11229
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11230
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11231
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11232
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11233
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11234
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11235
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11236
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11237
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11238
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11239
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11240
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11241
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11242
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11243
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11244
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11245
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11246
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11247
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11248
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11249
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11250
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11251
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11252
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11253
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11254
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11255
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11256
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11257
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11258
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11259
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11260
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11261
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11262
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11263
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11264
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11265
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11266
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11267
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11268
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11269
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11270
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11271
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11272
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11273
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11274
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11275
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11276
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11277
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11278
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11279
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11280
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11281
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11282
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11283
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11284
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11285
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11286
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11287
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11288
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11289
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11290
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11291
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11292
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11293
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11294
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11295
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11296
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11297
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11298
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11299
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11300
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11301
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11302
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11303
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11304
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11305
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11306
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11307
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11308
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11309
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11310
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11311
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11312
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11313
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11314
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11315
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11316
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11317
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11318
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11319
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11320
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11321
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11322
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11323
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11324
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11325
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11326
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11327
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11328
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11329
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11330
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11331
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11332
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11333
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11334
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11335
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11336
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11337
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11338
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11339
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11340
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11341
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11342
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11343
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11344
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11345
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11346
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11347
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11348
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11349
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11350
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11351
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11352
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11353
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11354
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11355
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11356
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11357
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11358
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11359
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11360
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11361
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11362
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11363
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11364
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11365
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11366
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11367
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11368
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11369
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11370
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11371
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11372
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11373
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11374
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11375
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11376
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11377
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11378
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11379
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11380
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11381
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11382
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11383
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11384
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11385
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11386
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11387
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11388
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11389
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11390
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11391
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11392
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11393
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11394
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11395
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11396
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11397
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11398
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11399
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11400
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11401
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11402
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11403
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11404
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11405
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11406
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11407
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11408
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11409
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11410
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11411
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11412
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11413
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11414
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11415
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11416
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11417
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11418
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11419
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11420
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11421
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11422
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11423
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11424
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11425
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11426
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11427
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11428
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11429
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11430
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11431
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11432
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11433
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11434
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11435
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11436
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11437
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11438
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11439
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11440
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11441
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11442
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11443
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11444
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11445
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11446
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11447
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11448
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11449
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11450
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11451
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11452
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11453
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11454
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11455
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11456
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11457
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11458
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11459
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11460
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11461
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11462
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11463
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11464
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11465
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11466
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11467
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11468
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11469
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11470
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11471
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11472
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11473
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11474
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11475
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11476
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11477
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11478
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11479
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11480
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11481
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11482
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11483
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11484
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11485
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11486
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11487
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11488
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11489
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11490
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11491
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11492
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11493
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11494
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11495
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11496
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11497
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11498
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11499
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
          AND `user_address`.`country_id` = `address`.`country_id`
          AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
          AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
          AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
        
        WHERE `a`.`user` = `b`.`user`
          AND (`a`.`ac_charger_port` = `b`.`connection_category`
          OR `a`.`dc_charger_port` = `b`.`connection_category`)    
        ORDER BY `a`.`user` ASC, rand()
        LIMIT 5)
        UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
      FROM
        (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
        FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
        WHERE `user`.`id` = 11500
          AND `user`.`id` = `user_has_vehicle`.`user`
          AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
          AND `dc_charger`.`id` = `vehicle`.`id`
          AND `ac_charger`.`id` = `vehicle`.`id`
          AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
          AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

        (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
        FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
        WHERE `user`.`user_address_id` = `user_address`.`id`
          AND  `charging_station`.`address_id` = `address`.`id`
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