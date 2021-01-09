package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;

@Entity
public class UsageType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 50, nullable = true)
    private String title;

    @Column(nullable = true)
	private Boolean isMembershipRequired;
	
	@OneToMany(mappedBy="usageType")
	private Set<ChargingStation> chargingStations;

	@PreRemove
    private void removeUsageType(){
        for (ChargingStation station : chargingStations) {
            station.setUsageType(null);
        }
    }

	UsageType() {}

    public UsageType(Integer id, String title, Boolean isMembershipRequired) {
		this.id = id;
		this.title = title;
		this.isMembershipRequired = isMembershipRequired;
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

	public Boolean getIsMembershipRequired() {
		return this.isMembershipRequired;
	}

	public void setIsMembershipRequired(Boolean isMembershipRequired) {
		this.isMembershipRequired=isMembershipRequired;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof UsageType)) return false;
		UsageType u = (UsageType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.isMembershipRequired, u.isMembershipRequired);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.isMembershipRequired);
    }
    
    @Override
    public String toString() {
      return "UsageType{" + "id=" + this.id + ", title='" + this.title + ", isMembershipRequired='" + this.isMembershipRequired +"'}";
    }
}
