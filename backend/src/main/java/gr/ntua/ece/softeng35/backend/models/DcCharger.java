package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class DcCharger{
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false ,nullable = true)
    private Double max_power;

    @Column(unique = false ,nullable = true)
    private Boolean is_default_charging_curve;

    @OneToMany(mappedBy="dc_charger")
    private Set<Vehicle> vehicles;

    @OneToMany(mappedBy="dc_charger")
    private Set<DcChargerPort> dcchargerports;

    @PreRemove
    private void removeDcCharger(){
        for (Vehicle vehicle : vehicles) {
            vehicle.setDc_charger(null);
        }
        for (DcChargerPort port : dcchargerports) {
            port.setDc_charger(null);
        }
    }

    DcCharger(){}

    public DcCharger(Integer id, Double max_power, Boolean is_default_charging_curve) {
        this.id = id;
        this.max_power = max_power;
        this.is_default_charging_curve = is_default_charging_curve;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Double getMax_power() {
        return this.max_power;
    }

    public void setMax_power(Double max_power) {
        this.max_power=max_power;
    }

    public Boolean getIs_default_charging_curve() {
        return this.is_default_charging_curve;
    }

    public void setIs_default_charging_curve(Boolean is_default_charging_curve) {
        this.is_default_charging_curve=is_default_charging_curve;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DcCharger)) return false;
        DcCharger u = (DcCharger) o;
        return
                Objects.equals(this.id, u.id) &&
                Objects.equals(this.max_power, u.max_power) &&
                Objects.equals(this.is_default_charging_curve, u.is_default_charging_curve);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                this.id,
                this.max_power,
                this.is_default_charging_curve);
    }

    @Override
    public String toString() {
        return "DcCharger{" + "id=" + this.id +", max_power='" + this.max_power + "',is_default_charging_curve=" + this.is_default_charging_curve + "}";
    }
} 