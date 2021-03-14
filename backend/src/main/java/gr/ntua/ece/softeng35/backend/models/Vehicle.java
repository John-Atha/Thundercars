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
    private String brandId;

    @Column(unique = false, length=10, nullable = true)
    private String type;

    @Column(unique = false, length=25, nullable = true)
    private String model;

    @Column(unique = false, nullable = true)
    private Integer releaseYear;

    @Column(unique = false, nullable = true)
    private Double usableBatterySize;

    @Column(unique = false, nullable = true)
    private Double energyConsumption;

    @ManyToOne
    @JoinColumn(name= "ac_charger_id",nullable = true)
    private AcCharger acCharger;

    @ManyToOne
    @JoinColumn(name= "dc_charger_id",nullable = true )
    private DcCharger dcCharger;

    @OneToMany(mappedBy = "vehicle")
    private Set<UserHasVehicle> userhasvehicles;
    @OneToMany(mappedBy="vehicle")
    private Set<ChargingProcess> chargingProcesses;

    @PreRemove
    private void removeVehicle(){
        for (UserHasVehicle userHasVehicle : userhasvehicles) {
            userHasVehicle.setVehicle(null);
        }
        for (ChargingProcess process : chargingProcesses) {
          process.setVehicle(null);
        }
    }
    
    public Vehicle(){}

    public Vehicle(Integer id, String brand, String brandId, String type, String model, Integer releaseYear, Double usableBatterySize, Double energyConsumption, AcCharger acCharger, DcCharger dcCharger) {
        this.id = id;
        this.brand = brand;
        this.brandId = brandId;
        this.type = type;
        this.model = model;
        this.releaseYear = releaseYear;
        this.usableBatterySize = usableBatterySize;
        this.energyConsumption = energyConsumption;
        this.acCharger = acCharger;
        this.dcCharger = dcCharger;
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

        public String getBrandId() {
                return this.brandId;
        }

        public void setBrandId(String brandId) {
                this.brandId=brandId;
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

        public Integer getReleaseYear() {
                return this.releaseYear;
        }

        public void setReleaseYear(Integer releaseYear) {
                this.releaseYear=releaseYear;
        }

        public Double getUsableBatterySize() {
                return this.usableBatterySize;
        }

        public void setUsableBatterySize(Double usableBatterySize) {
                this.usableBatterySize=usableBatterySize;
        }

        public Double getEnergyConsumption() {
                return this.energyConsumption;
        }

        public void setEnergyConsumption(Double energyConsumption) {
                this.energyConsumption=energyConsumption;
        }

        public AcCharger getAcCharger() {
                return this.acCharger;
        }

        public void setAcCharger(AcCharger acCharger) {
                this.acCharger=acCharger;
        }

        public DcCharger getDcCharger() {
                return this.dcCharger;
        }

        public void setDcCharger(DcCharger dcCharger) {
                this.dcCharger=dcCharger;
        }


        @Override
        public boolean equals(Object o) {
                if (this == o) return true;
                if (!(o instanceof Vehicle)) return false;
                Vehicle u = (Vehicle) o;
                return
                        Objects.equals(this.id, u.id) &&
                        Objects.equals(this.brand, u.brand) &&
                        Objects.equals(this.brandId, u.brandId) &&
                        Objects.equals(this.type, u.type) &&
                        Objects.equals(this.model, u.model) &&
                        Objects.equals(this.releaseYear, u.releaseYear) &&
                        Objects.equals(this.usableBatterySize, u.usableBatterySize) &&
                        Objects.equals(this.energyConsumption, u.energyConsumption) &&
                        Objects.equals(this.acCharger, u.acCharger) &&
                        Objects.equals(this.dcCharger, u.dcCharger);
        }

        @Override
        public int hashCode() {
                return Objects.hash(
                        this.id,
                        this.brand,
                        this.brandId,
                        this.type,
                        this.model,
                        this.releaseYear,
                        this.usableBatterySize,
                        this.energyConsumption,
                        this.acCharger);
        }

        @Override
        public String toString() {
            return "Vehicle{" + "id='" + this.id + "', brand='" + this.brand + "', type='" + this.type + "', model='" + this.model + "'}";
        }
}
