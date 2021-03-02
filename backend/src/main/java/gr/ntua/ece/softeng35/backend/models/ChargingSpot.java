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
    private ConnectionType connectionType;
    
    @ManyToOne
	@JoinColumn(name = "level_id", nullable = true)
	private Level level;

    @Column(unique = false, nullable = true)
    private Double amps;

    @Column(unique = false, nullable = true)
    private Double voltage;

    @Column(unique = false, nullable = true)
    private Double powerkw;
    
    @ManyToOne
	@JoinColumn(name = "current_type_id", nullable = true)
    private CurrentType currentType;
    
    @Column(unique = false, length = 500, nullable = true )
	private String comments;
	
	@OneToMany(mappedBy="chargingSpot")
	private Set<ChargingStationSpots> chargingStationSpots;

	@OneToMany(mappedBy="chargingSpot")
	private Set<ChargingProcess> chargingProcesses;

    @PreRemove
    private void removeSpot(){
        for (ChargingStationSpots chargingStationSpot : chargingStationSpots) {
            chargingStationSpot.setChargingSpot(null);
        }
        for (ChargingProcess process : chargingProcesses) {
            process.setChargingSpot(null);
        }
    }

    ChargingSpot() {}

	public ChargingSpot(Integer id, ConnectionType connectionType, Level level, Double amps, Double voltage, Double powerkw, CurrentType currentType, String comments) {
		this.id = id;
		this.connectionType = connectionType;
		this.level = level;
		this.amps = amps;
		this.voltage = voltage;
		this.powerkw = powerkw;
		this.currentType = currentType;
		this.comments = comments;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public ConnectionType getConnectionType() {
		return this.connectionType;
	}

	public void setConnectionType(ConnectionType connectionType) {
		this.connectionType=connectionType;
	}

	public Level getLevel() {
		return this.level;
	}

	public void setLevel(Level level) {
		this.level=level;
	}

	public Double getAmps() {
		return this.amps;
	}

	public void setAmps(Double amps) {
		this.amps=amps;
	}

	public Double getVoltage() {
		return this.voltage;
	}

	public void setVoltage(Double voltage) {
		this.voltage=voltage;
	}

	public Double getPowerkw() {
		return this.powerkw;
	}

	public void setPowerkw(Double powerkw) {
		this.powerkw=powerkw;
	}

	public CurrentType getCurrentType() {
		return this.currentType;
	}

	public void setCurrentType(CurrentType currentType) {
		this.currentType=currentType;
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
			Objects.equals(this.connectionType, u.connectionType) &&
			Objects.equals(this.level, u.level) &&
			Objects.equals(this.amps, u.amps) &&
			Objects.equals(this.voltage, u.voltage) &&
			Objects.equals(this.powerkw, u.powerkw) &&
			Objects.equals(this.currentType, u.currentType) &&
			Objects.equals(this.comments, u.comments);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.connectionType,
			this.level,
			this.amps,
			this.voltage,
			this.powerkw,
			this.currentType,
			this.comments);
    }
    
    @Override
    public String toString() {
        return "Charging Spot{" + "ID='" + this.id + "', Connection Type='" + this.connectionType 
        + "', Level='" + this.level + "', Amperes='" + this.amps + "', Voltage='" + this.voltage 
        + "', Power (kw)='" + this.powerkw + "', currentType='"+ this.currentType + "', comments='" + this.comments +"'}";
    }                        
}
