package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;
//import jdk.internal.agent.resources.agent;

@Entity
public class StatusType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 50, nullable = true)
    private String title;

    @Column(nullable = true)
    private Boolean isOperational;
    
    @Column(nullable = true)
	private Boolean isUserSelectable;
	
	@OneToMany(mappedBy="statusType")
	private Set<ChargingStation> chargingStations;

    @PreRemove
    private void removeStatusType(){
        for (ChargingStation station : chargingStations) {
            station.setStatusType(null);
        }
    }

	StatusType() {}
	
    public StatusType(Integer id, String title, Boolean isOperational, Boolean isUserSelectable) {
		this.id = id;
		this.title = title;
		this.isOperational = isOperational;
		this.isUserSelectable = isUserSelectable;
	}
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title=title;
	}

	public Boolean getIsOperational() {
		return this.isOperational;
	}

	public void setIsOperational(Boolean isOperational) {
		this.isOperational=isOperational;
	}

	public Boolean getIsUserSelectable() {
		return this.isUserSelectable;
	}

	public void setIsUserSelectable(Boolean isUserSelectable) {
		this.isUserSelectable=isUserSelectable;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof StatusType)) return false;
		StatusType u = (StatusType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.isOperational, u.isOperational) &&
			Objects.equals(this.isUserSelectable, u.isUserSelectable);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.isOperational,
			this.isUserSelectable);
	}
    
    @Override
    public String toString() {
      return "StatusType{" + "id=" + this.id + ", title='" + this.title + ", isOperational='" + this.isOperational 
            + "', isUserSelectable='" + this.isUserSelectable + "'}";
    }
}
