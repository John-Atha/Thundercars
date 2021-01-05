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
    private Boolean is_operational;
    
    @Column(nullable = true)
	private Boolean is_user_selectable;
	
	@OneToMany(mappedBy="status_type")
	private Set<ChargingStation> charging_stations;

    @PreRemove
    private void removeStatusType(){
        for (ChargingStation station : charging_stations) {
            station.setStatus_type(null);
        }
    }

	StatusType() {}
	
    public StatusType(Integer id, String title, Boolean is_operational, Boolean is_user_selectable) {
		this.id = id;
		this.title = title;
		this.is_operational = is_operational;
		this.is_user_selectable = is_user_selectable;
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

	public Boolean getIs_operational() {
		return this.is_operational;
	}

	public void setIs_operational(Boolean is_operational) {
		this.is_operational=is_operational;
	}

	public Boolean getIs_user_selectable() {
		return this.is_user_selectable;
	}

	public void setIs_user_selectable(Boolean is_user_selectable) {
		this.is_user_selectable=is_user_selectable;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof StatusType)) return false;
		StatusType u = (StatusType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.is_operational, u.is_operational) &&
			Objects.equals(this.is_user_selectable, u.is_user_selectable);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.is_operational,
			this.is_user_selectable);
	}
    
    @Override
    public String toString() {
      return "StatusType{" + "id=" + this.id + ", title='" + this.title + ", is_operational='" + this.is_operational 
            + "', is_user_selectable='" + this.is_user_selectable + "'}";
    }
}
