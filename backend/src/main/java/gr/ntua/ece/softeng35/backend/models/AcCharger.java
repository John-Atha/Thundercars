package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class AcCharger{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false ,nullable = true)
    private Integer usable_phases;

    @Column(unique=false, nullable = true)
    private Double max_power; 

    @OneToMany(mappedBy="ac_charger")
    private Set<Vehicle> vehicles;

    @OneToOne(mappedBy="ac_charger")
    private PowerPerChargingPoint powerperchargingpoints;

    @OneToMany(mappedBy="ac_charger")
    private Set<AcChargerPort> acchargerports;
    
    @PreRemove
    private void removeAcCharger(){
        for (Vehicle vehicle : vehicles) {
            vehicle.setAc_charger(null);
        }
        for (AcChargerPort port : acchargerports) {
            port.setAc_charger(null);
        }
    }

    AcCharger(){}

    public AcCharger(Integer id,Integer usable_phases, Double max_power) {
            this.id = id;
            this.usable_phases = usable_phases;
            this.max_power = max_power;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUsable_phases() {
            return this.usable_phases;
    }

    public void setUsable_phases(Integer usable_phases) {
            this.usable_phases=usable_phases;
    }

    public Double getMax_power() {
            return this.max_power;
    }

    public void setMax_power(Double max_power) {
            this.max_power=max_power;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof AcCharger)) return false;
            AcCharger u = (AcCharger) o;
            return
                    Objects.equals(this.id,u.id) &&
                    Objects.equals(this.usable_phases, u.usable_phases) &&
                    Objects.equals(this.max_power, u.max_power);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                this.id,
                this.usable_phases,
                this.max_power);
    }


    @Override
    public String toString() {
        return "AcCharger{" + "id=" + this.id + ", usable_phases="+ this.usable_phases +", max_power='" + this.max_power + "'}";
    }
} 