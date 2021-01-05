package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

import gr.ntua.ece.softeng35.backend.models.ChargingSpot;

@Entity
public class ChargingStationSpots {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
	@JoinColumn(name = "charging_station_id", nullable = false)
    private ChargingStation charging_station;
    
    @ManyToOne
	@JoinColumn(name = "charging_spot_id", nullable = false)
	private ChargingSpot charging_spot;

    @Column(unique = false, nullable = true)
    private Integer quantity;

    @Column(unique = false, nullable = true)
    private Integer quantity_available;

    @Column(unique = false, nullable = true)
    private Integer quantity_operational;

    ChargingStationSpots() {}

	public ChargingStationSpots(Integer id, ChargingStation charging_station, ChargingSpot charging_spot, Integer quantity, Integer quantity_available, Integer quantity_operational) {
		this.id = id;
		this.charging_station = charging_station;
		this.charging_spot = charging_spot;
		this.quantity = quantity;
		this.quantity_available = quantity_available;
		this.quantity_operational = quantity_operational;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
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

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity=quantity;
	}

	public Integer getQuantity_available() {
		return this.quantity_available;
	}

	public void setQuantity_available(Integer quantity_available) {
		this.quantity_available=quantity_available;
	}

	public Integer getQuantity_operational() {
		return this.quantity_operational;
	}

	public void setQuantity_operational(Integer quantity_operational) {
		this.quantity_operational=quantity_operational;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof ChargingStationSpots)) return false;
		ChargingStationSpots u = (ChargingStationSpots) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.charging_station, u.charging_station) &&
			Objects.equals(this.charging_spot, u.charging_spot) &&
			Objects.equals(this.quantity, u.quantity) &&
			Objects.equals(this.quantity_available, u.quantity_available) &&
			Objects.equals(this.quantity_operational, u.quantity_operational);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.charging_station,
			this.charging_spot,
			this.quantity,
			this.quantity_available,
			this.quantity_operational);
    }

    @Override
    public String toString() {
        return "Charging Station Spot{" + "ID='" + this.id + "', Charging Station='" + this.charging_station 
        + "', Charging Spot='" + this.charging_spot + "', Quantity='" + this.quantity + "', Quantity Available='" 
        + this.quantity_available + "', Quantity Operational='" + this.quantity_operational +"'}";
    } 
}
