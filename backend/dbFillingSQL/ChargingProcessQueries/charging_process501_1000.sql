(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 501
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 502
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 503
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 504
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 505
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 506
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 507
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 508
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 509
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 510
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 511
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 512
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 513
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 514
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 515
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 516
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 517
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 518
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 519
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 520
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 521
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 522
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 523
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 524
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 525
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 526
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 527
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 528
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 529
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 530
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 531
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 532
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 533
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 534
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 535
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 536
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 537
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 538
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 539
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 540
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 541
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 542
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 543
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 544
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 545
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 546
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 547
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 548
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 549
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 550
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 551
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 552
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 553
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 554
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 555
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 556
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 557
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 558
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 559
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 560
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 561
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 562
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 563
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 564
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 565
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 566
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 567
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 568
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 569
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 570
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 571
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 572
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 573
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 574
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 575
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 576
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 577
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 578
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 579
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 580
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 581
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 582
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 583
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 584
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 585
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 586
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 587
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 588
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 589
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 590
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 591
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 592
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 593
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 594
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 595
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 596
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 597
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 598
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 599
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 600
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 601
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 602
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 603
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 604
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 605
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 606
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 607
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 608
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 609
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 610
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 611
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 612
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 613
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 614
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 615
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 616
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 617
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 618
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 619
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 620
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 621
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 622
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 623
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 624
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 625
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 626
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 627
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 628
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 629
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 630
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 631
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 632
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 633
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 634
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 635
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 636
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 637
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 638
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 639
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 640
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 641
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 642
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 643
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 644
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 645
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 646
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 647
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 648
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 649
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 650
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 651
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 652
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 653
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 654
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 655
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 656
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 657
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 658
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 659
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 660
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 661
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 662
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 663
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 664
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 665
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 666
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 667
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 668
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 669
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 670
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 671
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 672
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 673
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 674
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 675
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 676
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 677
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 678
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 679
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 680
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 681
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 682
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 683
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 684
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 685
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 686
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 687
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 688
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 689
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 690
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 691
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 692
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 693
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 694
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 695
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 696
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 697
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 698
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 699
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 700
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 701
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 702
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 703
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 704
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 705
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 706
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 707
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 708
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 709
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 710
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 711
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 712
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 713
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 714
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 715
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 716
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 717
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 718
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 719
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 720
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 721
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 722
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 723
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 724
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 725
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 726
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 727
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 728
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 729
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 730
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 731
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 732
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 733
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 734
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 735
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 736
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 737
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 738
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 739
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 740
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 741
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 742
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 743
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 744
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 745
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 746
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 747
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 748
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 749
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 750
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 751
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 752
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 753
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 754
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 755
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 756
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 757
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 758
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 759
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 760
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 761
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 762
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 763
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 764
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 765
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 766
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 767
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 768
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 769
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 770
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 771
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 772
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 773
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 774
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 775
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 776
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 777
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 778
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 779
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 780
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 781
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 782
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 783
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 784
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 785
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 786
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 787
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 788
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 789
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 790
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 791
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 792
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 793
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 794
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 795
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 796
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 797
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 798
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 799
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 800
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 801
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 802
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 803
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 804
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 805
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 806
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 807
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 808
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 809
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 810
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 811
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 812
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 813
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 814
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 815
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 816
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 817
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 818
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 819
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 820
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 821
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 822
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 823
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 824
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 825
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 826
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 827
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 828
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 829
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 830
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 831
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 832
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 833
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 834
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 835
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 836
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 837
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 838
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 839
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 840
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 841
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 842
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 843
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 844
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 845
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 846
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 847
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 848
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 849
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 850
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 851
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 852
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 853
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 854
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 855
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 856
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 857
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 858
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 859
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 860
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 861
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 862
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 863
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 864
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 865
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 866
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 867
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 868
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 869
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 870
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 871
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 872
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 873
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 874
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 875
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 876
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 877
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 878
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 879
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 880
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 881
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 882
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 883
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 884
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 885
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 886
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 887
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 888
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 889
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 890
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 891
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 892
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 893
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 894
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 895
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 896
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 897
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 898
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 899
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 900
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 901
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 902
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 903
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 904
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 905
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 906
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 907
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 908
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 909
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 910
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 911
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 912
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 913
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 914
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 915
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 916
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 917
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 918
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 919
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 920
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 921
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 922
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 923
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 924
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 925
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 926
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 927
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 928
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 929
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 930
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 931
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 932
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 933
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 934
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 935
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 936
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 937
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 938
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 939
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 940
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 941
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 942
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 943
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 944
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 945
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 946
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 947
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 948
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 949
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 950
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 951
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 952
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 953
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 954
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 955
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 956
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 957
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 958
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 959
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 960
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 961
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 962
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 963
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 964
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 965
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 966
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 967
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 968
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 969
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 970
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 971
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 972
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 973
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 974
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 975
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 976
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 977
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 978
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 979
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 980
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 981
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 982
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 983
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 984
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 985
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 986
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 987
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 988
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 989
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 990
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 991
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 992
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 993
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 994
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 995
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 996
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 997
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 998
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 999
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
        AND `user_address`.`country_id` = `address`.`country_id`
        AND `charging_station_spots`.`charging_station_id` = `charging_station`.`id` 
        AND `charging_spot`.`id` = `charging_station_spots`.`charging_spot_id` 
        AND `connection_type`.`id` = `charging_spot`.`connection_type_id` ) AS `b` 
      
      WHERE `a`.`user` = `b`.`user`
        AND (`a`.`ac_charger_port` = `b`.`connection_category`
        OR `a`.`dc_charger_port` = `b`.`connection_category`)    
      ORDER BY `a`.`user` ASC, `b`.`station` ASC
      LIMIT 5)
      UNION
(SELECT `a`.`user`, `a`.`vehicle`, `b`.`station`, `b`.`spot`
    FROM
      (SELECT `user_has_vehicle`.`user` AS `user`, `vehicle`.`id` AS `vehicle`, `ac_charger_port`.`portname` AS `ac_charger_port`, `dc_charger_port`.`portname` AS `dc_charger_port`
      FROM `user`, `user_has_vehicle`, `vehicle`, `ac_charger`, `ac_charger_port`, `dc_charger`, `dc_charger_port`
      WHERE `user`.`id` = 1000
        AND `user`.`id` = `user_has_vehicle`.`user`
        AND `user_has_vehicle`.`vehicle` = `vehicle`.`id`
        AND `dc_charger`.`id` = `vehicle`.`id`
        AND `ac_charger`.`id` = `vehicle`.`id`
        AND `dc_charger_port`.`dc_charger_id` = `dc_charger`.`id`
        AND `ac_charger_port`.`ac_charger_id` = `ac_charger`.`id`) AS `a`,

      (SELECT `user`.`id` as `user`, `user_address`.`id` AS `user_address`, `charging_station`.`id` AS `station`, `address`.`id` AS `station_address`, `charging_station_spots`.`charging_spot_id` AS `spot`, `connection_type`.`category` AS `connection_category` 
      FROM `user`, `user_address`, `charging_station`, `address`, `charging_station_spots`, `charging_spot`, `connection_type`
      WHERE `user`.`user_address_id` = `user_address`.`id`
        AND  `charging_station`.`address_id` = `address`.`id`
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