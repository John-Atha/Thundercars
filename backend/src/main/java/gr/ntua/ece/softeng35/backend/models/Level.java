package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class Level {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 50, nullable = true)
    private String title;

    @Column(unique = false, length = 500, nullable = true )
    private String comments;

    @Column(nullable = true )
	private Boolean isFastChargeCapable;
	
	@OneToMany(mappedBy="level")
	private Set<ChargingSpot> chargingSpots;

    @PreRemove
    private void removeLevel(){
        for (ChargingSpot spot : chargingSpots) {
            spot.setLevel(null);
        }
    }

    Level() {}

	public Level(Integer id, String title, String comments, Boolean isFastChargeCapable) {
		this.id = id;
		this.title = title;
		this.comments = comments;
		this.isFastChargeCapable = isFastChargeCapable;
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

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments=comments;
	}

	public Boolean getIsFastChargeCapable() {
		return this.isFastChargeCapable;
	}

	public void setIsFastChargeCapable(Boolean isFastChargeCapable) {
		this.isFastChargeCapable=isFastChargeCapable;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof Level)) return false;
		Level u = (Level) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.comments, u.comments) &&
			Objects.equals(this.isFastChargeCapable, u.isFastChargeCapable);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.comments,
			this.isFastChargeCapable);
	}

    @Override
    public String toString() {
      return "Level {" + "ID=" + this.id + ", Title='" + this.title + ", Comments='" + this.comments 
            + "', Is fast charge supported='" + this.isFastChargeCapable + "'}";
    }
}