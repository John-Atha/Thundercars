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
	private Boolean is_membership_required;
	
	@OneToMany(mappedBy="usage_type")
	private Set<ChargingStation> charging_stations;

	UsageType() {}

    public UsageType(Integer id, String title, Boolean is_membership_required) {
		this.id = id;
		this.title = title;
		this.is_membership_required = is_membership_required;
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

	public Boolean getIs_membership_required() {
		return this.is_membership_required;
	}

	public void setIs_membership_required(Boolean is_membership_required) {
		this.is_membership_required=is_membership_required;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof UsageType)) return false;
		UsageType u = (UsageType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.is_membership_required, u.is_membership_required);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.is_membership_required);
    }
    
    @Override
    public String toString() {
      return "UsageType{" + "id=" + this.id + ", title='" + this.title + ", is_membership_required='" + this.is_membership_required +"'}";
    }
}
