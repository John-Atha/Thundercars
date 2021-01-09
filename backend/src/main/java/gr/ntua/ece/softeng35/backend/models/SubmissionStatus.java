package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class SubmissionStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 200, nullable = true)
    private String title;

    @Column(nullable = true)
	private Boolean isLive;
	
	@OneToMany(mappedBy="submissionStatus")
	private Set<ChargingStation> chargingStations;

    @PreRemove
    private void removeSubmissionStatus(){
        for (ChargingStation station : chargingStations) {
            station.setSubmissionStatus(null);
        }
    }

	SubmissionStatus() {}

    public SubmissionStatus(Integer id, String title, Boolean isLive) {
		this.id = id;
		this.title = title;
		this.isLive = isLive;
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

	public Boolean getIsLive() {
		return this.isLive;
	}

	public void setIsLive(Boolean isLive) {
		this.isLive=isLive;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof SubmissionStatus)) return false;
		SubmissionStatus u = (SubmissionStatus) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.isLive, u.isLive);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.isLive);
    }
    
    @Override
    public String toString() {
	  return "Submission Status{" + "id=" + this.id + ", title='" + this.title + ", isLive='" + this.isLive +"'}";
    }
}
