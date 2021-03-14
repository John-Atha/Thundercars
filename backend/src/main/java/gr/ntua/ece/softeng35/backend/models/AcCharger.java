package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class AcCharger{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false ,nullable = true)
    private Integer usablePhases;

    @Column(unique=false, nullable = true)
    private Double maxPower; 

    @OneToMany(mappedBy="acCharger")
    private Set<Vehicle> vehicles;

    @OneToOne(mappedBy="acCharger")
    private PowerPerChargingPoint powerperchargingpoints;

    @OneToMany(mappedBy="acCharger")
    private Set<AcChargerPort> acchargerports;
    
    @PreRemove
    private void removeAcCharger(){
        for (Vehicle vehicle : vehicles) {
            vehicle.setAcCharger(null);
        }
        for (AcChargerPort port : acchargerports) {
            port.setAcCharger(null);
        }
    }

    AcCharger(){}

    public AcCharger(Integer id,Integer usablePhases, Double maxPower) {
            this.id = id;
            this.usablePhases = usablePhases;
            this.maxPower = maxPower;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUsablePhases() {
            return this.usablePhases;
    }

    public void setUsablePhases(Integer usablePhases) {
            this.usablePhases=usablePhases;
    }

    public Double getMaxPower() {
            return this.maxPower;
    }

    public void setMaxPower(Double maxPower) {
            this.maxPower=maxPower;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof AcCharger)) return false;
            AcCharger u = (AcCharger) o;
            return
                    Objects.equals(this.id,u.id) &&
                    Objects.equals(this.usablePhases, u.usablePhases) &&
                    Objects.equals(this.maxPower, u.maxPower);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                this.id,
                this.usablePhases,
                this.maxPower);
    }


    @Override
    public String toString() {
        return "AcCharger{" + "id=" + this.id + ", usablePhases="+ this.usablePhases +", maxPower='" + this.maxPower + "'}";
    }
} 