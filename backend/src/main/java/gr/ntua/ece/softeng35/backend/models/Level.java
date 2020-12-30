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
	private Boolean is_fast_charge_capable;
	
	@OneToMany(mappedBy="level")
	private Set<ChargingSpot> charging_spots;

    Level() {}

	public Level(Integer id, String title, String comments, Boolean is_fast_charge_capable) {
		this.id = id;
		this.title = title;
		this.comments = comments;
		this.is_fast_charge_capable = is_fast_charge_capable;
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

	public Boolean getIs_fast_charge_capable() {
		return this.is_fast_charge_capable;
	}

	public void setIs_fast_charge_capable(Boolean is_fast_charge_capable) {
		this.is_fast_charge_capable=is_fast_charge_capable;
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
			Objects.equals(this.is_fast_charge_capable, u.is_fast_charge_capable);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.comments,
			this.is_fast_charge_capable);
	}

    @Override
    public String toString() {
      return "Level {" + "ID=" + this.id + ", Title='" + this.title + ", Comments='" + this.comments 
            + "', Is fast charge supported='" + this.is_fast_charge_capable + "'}";
    }
}