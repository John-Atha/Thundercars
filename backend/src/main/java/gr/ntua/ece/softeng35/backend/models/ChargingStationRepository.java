package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface ChargingStationRepository extends JpaRepository<ChargingStation, Integer> {

    /*
    List<ChargingStationSome> findAllProjectedBy();
    ChargingStationSome findProjectedByById(Integer id);
    */
}