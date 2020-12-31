package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class Vehicle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length=20, nullable = true)
    private String brand;

    @Column(unique = false, length=50, nullable = true)
    private String brand_id;

    @Column(unique = false, length=10, nullable = true)
    private String type;

    @Column(unique = false, length=25, nullable = true)
    private String model;

    @Column(unique = false, nullable = true)
    private Integer release_year;

    @Column(unique = false, nullable = true)
    private Double usable_battery_size;

    @Column(unique = false, nullable = true)
    private Double energy_consumption;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name= "ac_charger_id",nullable = false)
    private AcCharger ac_charger;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name= "dc_charger_id",nullable = true )
    private DcCharger dc_charger;

    @OneToMany(mappedBy = "vehicle")
    private Set<UserHasVehicle> userhasvehicles;

    Vehicle(){}

    public Vehicle(Integer id, String brand, String brand_id, String type, String model, Integer release_year, Double usable_battery_size, Double energy_consumption, AcCharger ac_charger, DcCharger dc_charger) {
        this.id = id;
        this.brand = brand;
        this.brand_id = brand_id;
        this.type = type;
        this.model = model;
        this.release_year = release_year;
        this.usable_battery_size = usable_battery_size;
        this.energy_consumption = energy_consumption;
        this.ac_charger = ac_charger;
        this.dc_charger = dc_charger;
    }

        public Integer getId() {
                return this.id;
        }

        public void setId(Integer id) {
                this.id=id;
        }

        public String getBrand() {
                return this.brand;
        }

        public void setBrand(String brand) {
                this.brand=brand;
        }

        public String getBrand_id() {
                return this.brand_id;
        }

        public void setBrand_id(String brand_id) {
                this.brand_id=brand_id;
        }

        public String getType() {
                return this.type;
        }

        public void setType(String type) {
                this.type=type;
        }

        public String getModel() {
                return this.model;
        }

        public void setModel(String model) {
                this.model=model;
        }

        public Integer getRelease_year() {
                return this.release_year;
        }

        public void setRelease_year(Integer release_year) {
                this.release_year=release_year;
        }

        public Double getUsable_battery_size() {
                return this.usable_battery_size;
        }

        public void setUsable_battery_size(Double usable_battery_size) {
                this.usable_battery_size=usable_battery_size;
        }

        public Double getEnergy_consumption() {
                return this.energy_consumption;
        }

        public void setEnergy_consumption(Double energy_consumption) {
                this.energy_consumption=energy_consumption;
        }

        public AcCharger getAc_charger() {
                return this.ac_charger;
        }

        public void setAc_charger(AcCharger ac_charger) {
                this.ac_charger=ac_charger;
        }

        public DcCharger getDc_charger() {
                return this.dc_charger;
        }

        public void setDc_charger(DcCharger dc_charger) {
                this.dc_charger=dc_charger;
        }


        @Override
        public boolean equals(Object o) {
                if (this == o) return true;
                if (!(o instanceof Vehicle)) return false;
                Vehicle u = (Vehicle) o;
                return
                        Objects.equals(this.id, u.id) &&
                        Objects.equals(this.brand, u.brand) &&
                        Objects.equals(this.brand_id, u.brand_id) &&
                        Objects.equals(this.type, u.type) &&
                        Objects.equals(this.model, u.model) &&
                        Objects.equals(this.release_year, u.release_year) &&
                        Objects.equals(this.usable_battery_size, u.usable_battery_size) &&
                        Objects.equals(this.energy_consumption, u.energy_consumption) &&
                        Objects.equals(this.ac_charger, u.ac_charger) &&
                        Objects.equals(this.dc_charger, u.dc_charger);
        }

        @Override
        public int hashCode() {
                return Objects.hash(
                        this.id,
                        this.brand,
                        this.brand_id,
                        this.type,
                        this.model,
                        this.release_year,
                        this.usable_battery_size,
                        this.energy_consumption,
                        this.ac_charger);
        }

        @Override
        public String toString() {
            return "Vehicle{" + "id='" + this.id + "', brand='" + this.brand + "', type='" + this.type + "', model='" + this.model + "'}";
        }
}