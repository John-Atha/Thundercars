package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class DcCharger{
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false ,nullable = true)
    private Double maxPower;

    @Column(unique = false ,nullable = true)
    private Boolean isDefaultChargingCurve;

    @OneToMany(mappedBy="dcCharger")
    private Set<Vehicle> vehicles;

    @OneToMany(mappedBy="dcCharger")
    private Set<DcChargerPort> dcchargerports;

    @PreRemove
    private void removeDcCharger(){
        for (Vehicle vehicle : vehicles) {
            vehicle.setDcCharger(null);
        }
        for (DcChargerPort port : dcchargerports) {
            port.setDcCharger(null);
        }
    }

    DcCharger(){}

    public DcCharger(Integer id, Double maxPower, Boolean isDefaultChargingCurve) {
        this.id = id;
        this.maxPower = maxPower;
        this.isDefaultChargingCurve = isDefaultChargingCurve;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Double getMaxPower() {
        return this.maxPower;
    }

    public void setMaxPower(Double maxPower) {
        this.maxPower=maxPower;
    }

    public Boolean getIsDefaultChargingCurve() {
        return this.isDefaultChargingCurve;
    }

    public void setIsDefaultChargingCurve(Boolean isDefaultChargingCurve) {
        this.isDefaultChargingCurve=isDefaultChargingCurve;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DcCharger)) return false;
        DcCharger u = (DcCharger) o;
        return
                Objects.equals(this.id, u.id) &&
                Objects.equals(this.maxPower, u.maxPower) &&
                Objects.equals(this.isDefaultChargingCurve, u.isDefaultChargingCurve);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
                this.id,
                this.maxPower,
                this.isDefaultChargingCurve);
    }

    @Override
    public String toString() {
        return "DcCharger{" + "id=" + this.id +", maxPower='" + this.maxPower + "',isDefaultChargingCurve=" + this.isDefaultChargingCurve + "}";
    }
} 