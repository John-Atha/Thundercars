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
	private Boolean is_live;
	
	@OneToMany(mappedBy="submission_status")
	private Set<ChargingStation> charging_stations;

    @PreRemove
    private void removeSubmissionStatus(){
        for (ChargingStation station : charging_stations) {
            station.setSubmission_status(null);
        }
    }

	SubmissionStatus() {}

    public SubmissionStatus(Integer id, String title, Boolean is_live) {
		this.id = id;
		this.title = title;
		this.is_live = is_live;
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

	public Boolean getIs_live() {
		return this.is_live;
	}

	public void setIs_live(Boolean is_live) {
		this.is_live=is_live;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof SubmissionStatus)) return false;
		SubmissionStatus u = (SubmissionStatus) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.is_live, u.is_live);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.is_live);
    }
    
    @Override
    public String toString() {
	  return "Submission Status{" + "id=" + this.id + ", title='" + this.title + ", is_live='" + this.is_live +"'}";
    }
}
