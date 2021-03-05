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
	@JoinColumn(name = "charging_station_id", nullable = true)
    private ChargingStation chargingStation;
    
    @ManyToOne
	@JoinColumn(name = "charging_spot_id", nullable = true)
	private ChargingSpot chargingSpot;

    @Column(unique = false, nullable = true)
    private Integer quantity;

    @Column(unique = false, nullable = true)
    private Integer quantityAvailable;

    @Column(unique = false, nullable = true)
    private Integer quantityOperational;

    ChargingStationSpots() {}

	public ChargingStationSpots(Integer id, ChargingStation chargingStation, ChargingSpot chargingSpot, Integer quantity, Integer quantityAvailable, Integer quantityOperational) {
		this.id = id;
		this.chargingStation = chargingStation;
		this.chargingSpot = chargingSpot;
		this.quantity = quantity;
		this.quantityAvailable = quantityAvailable;
		this.quantityOperational = quantityOperational;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
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

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity=quantity;
	}

	public Integer getQuantityAvailable() {
		return this.quantityAvailable;
	}

	public void setQuantityAvailable(Integer quantityAvailable) {
		this.quantityAvailable=quantityAvailable;
	}

	public Integer getQuantityOperational() {
		return this.quantityOperational;
	}

	public void setQuantityOperational(Integer quantityOperational) {
		this.quantityOperational=quantityOperational;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof ChargingStationSpots)) return false;
		ChargingStationSpots u = (ChargingStationSpots) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.chargingStation, u.chargingStation) &&
			Objects.equals(this.chargingSpot, u.chargingSpot) &&
			Objects.equals(this.quantity, u.quantity) &&
			Objects.equals(this.quantityAvailable, u.quantityAvailable) &&
			Objects.equals(this.quantityOperational, u.quantityOperational);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.chargingStation,
			this.chargingSpot,
			this.quantity,
			this.quantityAvailable,
			this.quantityOperational);
    }

    @Override
    public String toString() {
        return "Charging Station Spot{" + "ID='" + this.id + "', Charging Station='" + this.chargingStation 
        + "', Charging Spot='" + this.chargingSpot + "', Quantity='" + this.quantity + "', Quantity Available='" 
        + this.quantityAvailable + "', Quantity Operational='" + this.quantityOperational +"'}";
    } 
}
