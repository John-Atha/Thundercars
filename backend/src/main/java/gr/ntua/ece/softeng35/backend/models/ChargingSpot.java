package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class ChargingSpot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
	@JoinColumn(name = "connection_type_id", nullable = true)
    private ConnectionType connection_type;
    
    @ManyToOne
	@JoinColumn(name = "level_id", nullable = true)
	private Level level;

    @Column(unique = false, nullable = true)
    private Integer amps;

    @Column(unique = false, nullable = true)
    private Integer voltage;

    @Column(unique = false, nullable = true)
    private Integer powerkw;
    
    @ManyToOne
	@JoinColumn(name = "current_type_id", nullable = true)
    private CurrentType current_type;
    
    @Column(unique = false, length = 500, nullable = true )
	private String comments;
	
	@OneToMany(mappedBy="charging_spot")
	private Set<ChargingStationSpots> charging_station_spots;

	@OneToMany(mappedBy="charging_spot")
	private Set<ChargingProcess> charging_processes;

    @PreRemove
    private void removeSpot(){
        for (ChargingStationSpots charging_station_spot : charging_station_spots) {
            charging_station_spot.setCharging_spot(null);
        }
        for (ChargingProcess process : charging_processes) {
            process.setCharging_spot(null);
        }
    }

    ChargingSpot() {}

	public ChargingSpot(Integer id, ConnectionType connection_type, Level level, Integer amps, Integer voltage, Integer powerkw, CurrentType current_type, String comments) {
		this.id = id;
		this.connection_type = connection_type;
		this.level = level;
		this.amps = amps;
		this.voltage = voltage;
		this.powerkw = powerkw;
		this.current_type = current_type;
		this.comments = comments;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public ConnectionType getConnection_type() {
		return this.connection_type;
	}

	public void setConnection_type(ConnectionType connection_type) {
		this.connection_type=connection_type;
	}

	public Level getLevel() {
		return this.level;
	}

	public void setLevel(Level level) {
		this.level=level;
	}

	public Integer getAmps() {
		return this.amps;
	}

	public void setAmps(Integer amps) {
		this.amps=amps;
	}

	public Integer getVoltage() {
		return this.voltage;
	}

	public void setVoltage(Integer voltage) {
		this.voltage=voltage;
	}

	public Integer getPowerkw() {
		return this.powerkw;
	}

	public void setPowerkw(Integer powerkw) {
		this.powerkw=powerkw;
	}

	public CurrentType getCurrent_type() {
		return this.current_type;
	}

	public void setCurrent_type(CurrentType current_type) {
		this.current_type=current_type;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments=comments;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof ChargingSpot)) return false;
		ChargingSpot u = (ChargingSpot) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.connection_type, u.connection_type) &&
			Objects.equals(this.level, u.level) &&
			Objects.equals(this.amps, u.amps) &&
			Objects.equals(this.voltage, u.voltage) &&
			Objects.equals(this.powerkw, u.powerkw) &&
			Objects.equals(this.current_type, u.current_type) &&
			Objects.equals(this.comments, u.comments);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.connection_type,
			this.level,
			this.amps,
			this.voltage,
			this.powerkw,
			this.current_type,
			this.comments);
    }
    
    @Override
    public String toString() {
        return "Charging Spot{" + "ID='" + this.id + "', Connection Type='" + this.connection_type 
        + "', Level='" + this.level + "', Amperes='" + this.amps + "', Voltage='" + this.voltage 
        + "', Power (kw)='" + this.powerkw + "', current_type='"+ this.current_type + "', comments='" + this.comments +"'}";
    }                        
}
