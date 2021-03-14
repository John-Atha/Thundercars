package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class ChargingProcess {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = true)
    private User user;

    @ManyToOne
    @JoinColumn(name = "vehicle_id", nullable = true)
    private Vehicle vehicle;

    @ManyToOne
    @JoinColumn(name = "chargingStation_id", nullable = true)
    private ChargingStation chargingStation;

    @ManyToOne
    @JoinColumn(name = "chargingSpot_id", nullable = true)
    private ChargingSpot chargingSpot;

    @Column(unique = false, nullable = false)
    private Date connectionTime;

    @Column(unique = false, nullable = false)
    private Date disconnectTime;

    @Column(unique = false, nullable = false)
    private Date doneChargingTime;

    @Column(unique = false, nullable = false)
    private String timezone;

    @Column(unique = false, nullable = false)
    private Double kwhDelivered;

    @Column(unique = false, nullable = false)
    private Double cost;

    @Column(unique = false, nullable = false)
    private String paymentWay;

    @Column(unique = false, nullable = false)
    private Double rating;

    @Column(unique = false, nullable = false)
    private String chargingProgram;

    public ChargingProcess() {}

    public ChargingProcess(Integer id, User user, Vehicle vehicle, ChargingStation chargingStation, ChargingSpot chargingSpot, Date connectionTime, Date disconnectTime, Date doneChargingTime, String timezone, Double kwhDelivered, Double cost, String paymentWay, Double rating, String chargingProgram) {
        this.id = id;
        this.user = user;
        this.vehicle = vehicle;
        this.chargingStation = chargingStation;
        this.chargingSpot = chargingSpot;
        this.connectionTime = connectionTime;
        this.disconnectTime = disconnectTime;
        this.doneChargingTime = doneChargingTime;
        this.timezone = timezone;
        this.kwhDelivered = kwhDelivered;
        this.cost = cost;
        this.paymentWay = paymentWay;
        this.rating = rating;
        this.chargingProgram = chargingProgram;
    }

    public Integer getId() {
            return this.id;
    }

    public void setId(Integer id) {
            this.id=id;
    }

    public User getUser() {
            return this.user;
    }

    public void setUser(User user) {
            this.user=user;
    }

    public Vehicle getVehicle() {
            return this.vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
            this.vehicle=vehicle;
    }

    public ChargingStation getChargingStation() {
            return this.chargingStation;
    }

    public void setChargingStation(ChargingStation chargingStation) {
            this.chargingStation=chargingStation;
    }

    public ChargingSpot getChargingSpot() {
            return this.chargingSpot;
    }

    public void setChargingSpot(ChargingSpot chargingSpot) {
            this.chargingSpot=chargingSpot;
    }

    public Date getConnectionTime() {
            return this.connectionTime;
    }

    public void setConnectionTime(Date connectionTime) {
            this.connectionTime=connectionTime;
    }

    public Date getDisconnectTime() {
            return this.disconnectTime;
    }

    public void setDisconnectTime(Date disconnectTime) {
            this.disconnectTime=disconnectTime;
    }

    public Date getDoneChargingTime() {
            return this.doneChargingTime;
    }

    public void setDoneChargingTime(Date doneChargingTime) {
            this.doneChargingTime=doneChargingTime;
    }

    public String getTimezone() {
            return this.timezone;
    }

    public void setTimezone(String timezone) {
            this.timezone=timezone;
    }

    public Double getKwhDelivered() {
            return this.kwhDelivered;
    }

    public void setKwhDelivered(Double kwhDelivered) {
            this.kwhDelivered=kwhDelivered;
    }

    public Double getCost() {
            return this.cost;
    }

    public void setCost(Double cost) {
            this.cost=cost;
    }

    public String getPaymentWay() {
            return this.paymentWay;
    }

    public void setPaymentWay(String paymentWay) {
            this.paymentWay=paymentWay;
    }

    public Double getRating() {
            return this.rating;
    }

    public void setRating(Double rating) {
            this.rating=rating;
    }

    public String getChargingProgram() {
            return this.chargingProgram;
    }

    public void setChargingProgram(String chargingProgram) {
            this.chargingProgram=chargingProgram;
    }


    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof ChargingProcess)) return false;
            ChargingProcess u = (ChargingProcess) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.user, u.user) &&
                    Objects.equals(this.vehicle, u.vehicle) &&
                    Objects.equals(this.chargingStation, u.chargingStation) &&
                    Objects.equals(this.chargingSpot, u.chargingSpot) &&
                    Objects.equals(this.connectionTime, u.connectionTime) &&
                    Objects.equals(this.disconnectTime, u.disconnectTime) &&
                    Objects.equals(this.doneChargingTime, u.doneChargingTime) &&
                    Objects.equals(this.timezone, u.timezone) &&
                    Objects.equals(this.kwhDelivered, u.kwhDelivered) &&
                    Objects.equals(this.cost, u.cost) &&
                    Objects.equals(this.paymentWay, u.paymentWay) &&
                    Objects.equals(this.rating, u.rating) &&
                    Objects.equals(this.chargingProgram, u.chargingProgram);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.user,
                    this.vehicle,
                    this.chargingStation,
                    this.chargingSpot,
                    this.connectionTime,
                    this.disconnectTime,
                    this.doneChargingTime,
                    this.timezone,
                    this.kwhDelivered,
                    this.cost,
                    this.paymentWay,
                    this.rating,
                    this.chargingProgram);
    }


    @Override
    public String toString() {
        return "Charging Process{" + "ID='" + this.id + "', User='" + this.user
        + "', Vehicle='" + this.vehicle + "', Charging Station'" + this.chargingStation + "', Chraging Spot='" + this.chargingSpot 
        + "', Connection Time='" + this.connectionTime + "', Disconnect Time='"+ this.disconnectTime + "', Done Charging Time ='" + this.doneChargingTime
        + "', Timezone='" + this.timezone + "', kWh Delivered='"+ this.kwhDelivered + "', Cost ='" + this.cost
        + "', Payment='" + this.paymentWay + "', Rating='"+ this.rating + "', Charging Program='" + this.chargingProgram + "'}";
    }



}