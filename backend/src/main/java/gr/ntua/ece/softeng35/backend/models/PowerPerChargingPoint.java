package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class PowerPerChargingPoint {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToOne
    @JoinColumn(name= "ac_charger_id",nullable = false)
    private AcCharger acCharger;

    @Column(unique=false,nullable = true)
    private Double point20;

    @Column(unique=false,nullable = true)
    private Double point23;

    @Column(unique=false,nullable = true)
    private Double point37; 

    @Column(unique=false,nullable = true)
    private Double point74;

    @Column(unique=false,nullable = true)
    private Double point110;

    @Column(unique=false,nullable = true)
    private Double point160;

    @Column(unique=false,nullable = true)
    private Double point220;

    @Column(unique=false,nullable = true)
    private Double point430;

    PowerPerChargingPoint(){}
    
    public PowerPerChargingPoint(Integer id, AcCharger acCharger, Double point20, Double point23, Double point37, Double point74, Double point110, Double point160, Double point220, Double point430) {        
                this.id = id;
                this.acCharger = acCharger;
                this.point20 = point20;
                this.point23 = point23;
                this.point37 = point37;
                this.point74 = point74;
                this.point110 = point110;
                this.point160 = point160;
                this.point220 = point220;
                this.point430 = point430;
    }

    public Integer getId() {
            return this.id;
    }

    public void setId(Integer id) {
            this.id=id;
    }

    public AcCharger getAcCharger() {
            return this.acCharger;
    }

    public void setAcCharger(AcCharger acCharger) {
            this.acCharger=acCharger;
    }

    public Double getPoint20() {
            return this.point20;
    }

    public void setPoint20(Double point20) {
            this.point20=point20;
    }

    public Double getPoint23() {
            return this.point23;
    }

    public void setPoint23(Double point23) {
            this.point23=point23;
    }

    public Double getPoint37() {
            return this.point37;
    }

    public void setPoint37(Double point37) {
            this.point37=point37;
    }

    public Double getPoint74() {
            return this.point74;
    }

    public void setPoint74(Double point74) {
            this.point74=point74;
    }

    public Double getPoint110() {
            return this.point110;
    }

    public void setPoint110(Double point110) {
            this.point110=point110;
    }

    public Double getPoint160() {
            return this.point160;
    }

    public void setPoint160(Double point160) {
            this.point160=point160;
    }

    public Double getPoint220() {
            return this.point220;
    }

    public void setPoint220(Double point220) {
            this.point220=point220;
    }

    public Double getPoint430() {
            return this.point430;
    }

    public void setPoint430(Double point430) {
            this.point430=point430;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof PowerPerChargingPoint)) return false;
            PowerPerChargingPoint u = (PowerPerChargingPoint) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.acCharger, u.acCharger) &&
                    Objects.equals(this.point20, u.point20) &&
                    Objects.equals(this.point23, u.point23) &&
                    Objects.equals(this.point37, u.point37) &&
                    Objects.equals(this.point74, u.point74) &&
                    Objects.equals(this.point110, u.point110) &&
                    Objects.equals(this.point160, u.point160) &&
                    Objects.equals(this.point220, u.point220) &&
                    Objects.equals(this.point430, u.point430);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.acCharger,
                    this.point20,
                    this.point23,
                    this.point37,
                    this.point74,
                    this.point110,
                    this.point160,
                    this.point220,
                    this.point430);
    }

    
    @Override 
    public String toString() {
        return "PowerPerChargingPoint{" + "id=" + this.id + ", acCharger=" + this.acCharger + "}";
    }

}