package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

public interface ChargingStationSome {

    Integer getId();

    Operator getOperator();

    RuntimeException ChargingStationNotFoundException(Integer id);

}