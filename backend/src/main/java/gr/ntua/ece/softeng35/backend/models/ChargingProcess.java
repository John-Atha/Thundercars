package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class ChargingProcess {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "vehicle_id", nullable = false)
    private Vehicle vehicle;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "charging_station_id", nullable = false)
    private ChargingStation charging_station;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "charging_spot_id", nullable = false)
    private ChargingSpot charging_spot;

    @Column(unique = false, nullable = false)
    private Date connection_time;

    @Column(unique = false, nullable = false)
    private Date disconnect_time;

    @Column(unique = false, nullable = false)
    private Date done_charging_time;

    @Column(unique = false, nullable = false)
    private String timezone;

    @Column(unique = false, nullable = false)
    private Double kwh_delivered;

    @Column(unique = false, nullable = false)
    private Double cost;

    @Column(unique = false, nullable = false)
    private String payment_way;

    @Column(unique = false, nullable = false)
    private Double rating;

    @Column(unique = false, nullable = false)
    private String charging_program;

    ChargingProcess() {}

    public ChargingProcess(Integer id, User user, Vehicle vehicle, ChargingStation charging_station, ChargingSpot charging_spot, Date connection_time, Date disconnect_time, Date done_charging_time, String timezone, Double kwh_delivered, Double cost, String payment_way, Double rating, String charging_program) {
        this.id = id;
        this.user = user;
        this.vehicle = vehicle;
        this.charging_station = charging_station;
        this.charging_spot = charging_spot;
        this.connection_time = connection_time;
        this.disconnect_time = disconnect_time;
        this.done_charging_time = done_charging_time;
        this.timezone = timezone;
        this.kwh_delivered = kwh_delivered;
        this.cost = cost;
        this.payment_way = payment_way;
        this.rating = rating;
        this.charging_program = charging_program;
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

    public ChargingStation getCharging_station() {
            return this.charging_station;
    }

    public void setCharging_station(ChargingStation charging_station) {
            this.charging_station=charging_station;
    }

    public ChargingSpot getCharging_spot() {
            return this.charging_spot;
    }

    public void setCharging_spot(ChargingSpot charging_spot) {
            this.charging_spot=charging_spot;
    }

    public Date getConnection_time() {
            return this.connection_time;
    }

    public void setConnection_time(Date connection_time) {
            this.connection_time=connection_time;
    }

    public Date getDisconnect_time() {
            return this.disconnect_time;
    }

    public void setDisconnect_time(Date disconnect_time) {
            this.disconnect_time=disconnect_time;
    }

    public Date getDone_charging_time() {
            return this.done_charging_time;
    }

    public void setDone_charging_time(Date done_charging_time) {
            this.done_charging_time=done_charging_time;
    }

    public String getTimezone() {
            return this.timezone;
    }

    public void setTimezone(String timezone) {
            this.timezone=timezone;
    }

    public Double getKwh_delivered() {
            return this.kwh_delivered;
    }

    public void setKwh_delivered(Double kwh_delivered) {
            this.kwh_delivered=kwh_delivered;
    }

    public Double getCost() {
            return this.cost;
    }

    public void setCost(Double cost) {
            this.cost=cost;
    }

    public String getPayment_way() {
            return this.payment_way;
    }

    public void setPayment_way(String payment_way) {
            this.payment_way=payment_way;
    }

    public Double getRating() {
            return this.rating;
    }

    public void setRating(Double rating) {
            this.rating=rating;
    }

    public String getCharging_program() {
            return this.charging_program;
    }

    public void setCharging_program(String charging_program) {
            this.charging_program=charging_program;
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
                    Objects.equals(this.charging_station, u.charging_station) &&
                    Objects.equals(this.charging_spot, u.charging_spot) &&
                    Objects.equals(this.connection_time, u.connection_time) &&
                    Objects.equals(this.disconnect_time, u.disconnect_time) &&
                    Objects.equals(this.done_charging_time, u.done_charging_time) &&
                    Objects.equals(this.timezone, u.timezone) &&
                    Objects.equals(this.kwh_delivered, u.kwh_delivered) &&
                    Objects.equals(this.cost, u.cost) &&
                    Objects.equals(this.payment_way, u.payment_way) &&
                    Objects.equals(this.rating, u.rating) &&
                    Objects.equals(this.charging_program, u.charging_program);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.user,
                    this.vehicle,
                    this.charging_station,
                    this.charging_spot,
                    this.connection_time,
                    this.disconnect_time,
                    this.done_charging_time,
                    this.timezone,
                    this.kwh_delivered,
                    this.cost,
                    this.payment_way,
                    this.rating,
                    this.charging_program);
    }


    @Override
    public String toString() {
        return "Charging Process{" + "ID='" + this.id + "', User='" + this.user
        + "', Vehicle='" + this.vehicle + "', Charging Station'" + this.charging_station + "', Chraging Spot='" + this.charging_spot 
        + "', Connection Time='" + this.connection_time + "', Disconnect Time='"+ this.disconnect_time + "', Done Charging Time ='" + this.done_charging_time
        + "', Timezone='" + this.timezone + "', kWh Delivered='"+ this.kwh_delivered + "', Cost ='" + this.cost
        + "', Payment='" + this.payment_way + "', Rating='"+ this.rating + "', Charging Program='" + this.charging_program + "'}";
    }



}