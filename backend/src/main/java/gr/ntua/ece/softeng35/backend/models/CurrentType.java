package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class CurrentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 50, nullable = true)
    private String title;

    @Column(unique = false, length = 50, nullable = true )
	private String description;    
	
	@OneToMany(mappedBy="currentType")
	private Set<ChargingSpot> chargingSpots;

    @PreRemove
    private void removeCurrentType(){
        for (ChargingSpot spot : chargingSpots) {
            spot.setCurrentType(null);
        }
    }

    CurrentType() {}

	public CurrentType(Integer id, String title, String description) {
		this.id = id;
		this.title = title;
		this.description = description;
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

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description=description;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof CurrentType)) return false;
		CurrentType u = (CurrentType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.description, u.description);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.description);
    }

    @Override
    public String toString() {
      return "Current Type {" + "ID=" + this.id + ", Title='" + this.title + ", Description='" + this.description + "'}";
    }
}
