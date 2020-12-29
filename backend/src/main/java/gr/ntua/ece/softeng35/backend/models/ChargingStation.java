package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class ChargingStation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = false)
    private String uuid;

    /*
    @Column(unique = false, nullable = false)
    private Integer current_provider_id;
    */

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "operator_id" , nullable = false)
    private Operator operator;

    /*
    @Column(unique = false, nullable = false)
    private Integer station_owner_id;
    */

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "usage_type_id" , nullable = false)
    private UsageType usage_type;


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id", referencedColumnName = "id" , nullable = false)
    private Address address;

    @Column(unique = false , length = 1000 , nullable = true)
    private String comments;

    @Column(unique = false, length = 60, nullable = true)
    private Date date_last_confirmed;

    @Column(unique = false, length = 60, nullable = true)
    private Date date_last_status_update;

    @Column(unique = false, length = 60, nullable = true)
    private Date date_created;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "status_type_id" , nullable = false)
    private StatusType status_type;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "submission_status_id" , nullable = false)
    private SubmissionStatus submission_status;

    // @Column(unique = false , nullable = true)
    // public Blob media_items;

    @Column(unique = false, nullable = true)
	private Double rating;

    @Column(unique = false, nullable = true)
	private Double cost_per_kwh;
	
	ChargingStation() {}

    public ChargingStation(Integer id, String uuid, Operator operator, UsageType usage_type, Address address, String comments, Date date_last_confirmed, Date date_last_status_update, Date date_created, StatusType status_type, SubmissionStatus submission_status, /*Blob media_items, */Double rating, Double cost_per_kwh) {
		this.id = id;
		this.uuid = uuid;
		this.operator = operator;
		this.usage_type = usage_type;
		this.address = address;
		this.comments = comments;
		this.date_last_confirmed = date_last_confirmed;
		this.date_last_status_update = date_last_status_update;
		this.date_created = date_created;
		this.status_type = status_type;
		this.submission_status = submission_status;
	//	this.media_items = media_items;
		this.rating = rating;
		this.cost_per_kwh = cost_per_kwh;
	}
    
    
    public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid=uuid;
	}

	public Operator getOperator() {
		return this.operator;
	}

	public void setOperator(Operator operator) {
		this.operator=operator;
	}

	public UsageType getUsage_type() {
		return this.usage_type;
	}

	public void setUsage_type(UsageType usage_type) {
		this.usage_type=usage_type;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address=address;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments=comments;
	}

	public Date getDate_last_confirmed() {
		return this.date_last_confirmed;
	}

	public void setDate_last_confirmed(Date date_last_confirmed) {
		this.date_last_confirmed=date_last_confirmed;
	}

	public Date getDate_last_status_update() {
		return this.date_last_status_update;
	}

	public void setDate_last_status_update(Date date_last_status_update) {
		this.date_last_status_update=date_last_status_update;
	}

	public Date getDate_created() {
		return this.date_created;
	}

	public void setDate_created(Date date_created) {
		this.date_created=date_created;
	}

	public StatusType getStatus_type() {
		return this.status_type;
	}

	public void setStatus_type(StatusType status_type) {
		this.status_type=status_type;
	}

	public SubmissionStatus getSubmission_status() {
		return this.submission_status;
	}

	public void setSubmission_status(SubmissionStatus submission_status) {
		this.submission_status=submission_status;
	}

	// public Blob getMedia_items() {
	// 	return this.media_items;
	// }

	// public void setMedia_items(Blob media_items) {
	// 	this.media_items=media_items;
	// }

	public Double getRating() {
		return this.rating;
	}

	public void setRating(Double rating) {
		this.rating=rating;
	}

	public Double getCost_per_kwh() {
		return this.cost_per_kwh;
	}

	public void setCost_per_kwh(Double cost_per_kwh) {
		this.cost_per_kwh=cost_per_kwh;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof ChargingStation)) return false;
		ChargingStation u = (ChargingStation) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.uuid, u.uuid) &&
			Objects.equals(this.operator, u.operator) &&
			Objects.equals(this.usage_type, u.usage_type) &&
			Objects.equals(this.address, u.address) &&
			Objects.equals(this.comments, u.comments) &&
			Objects.equals(this.date_last_confirmed, u.date_last_confirmed) &&
			Objects.equals(this.date_last_status_update, u.date_last_status_update) &&
			Objects.equals(this.date_created, u.date_created) &&
			Objects.equals(this.status_type, u.status_type) &&
			Objects.equals(this.submission_status, u.submission_status) &&
		//	Objects.equals(this.media_items, u.media_items) &&
			Objects.equals(this.rating, u.rating) &&
			Objects.equals(this.cost_per_kwh, u.cost_per_kwh);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.uuid,
			this.operator,
			this.usage_type,
			this.address,
			this.comments,
			this.date_last_confirmed,
			this.date_last_status_update,
			this.date_created,
			this.status_type,
			this.submission_status,
		//	this.media_items,
			this.rating,
			this.cost_per_kwh);
	}



    @Override
    public String toString() {
        return "Charging Station{" + "ID='" + this.id + "', UUID='" + this.uuid + "', Operator='" + this.operator 
        + "', Usage type='" + this.usage_type + "', Address='" + this.address + "', comments='"
        + this.comments + "', Last Date Confirmed='" + this.date_last_confirmed +"', Last status Update Date='" 
        + this.date_last_status_update + "', Date Created='" + this.date_created + "', Status Type='" + this.status_type
        + "', Submission Status='" + this.submission_status + "', Rating='"+ this.rating + "', Cost per kWh='" 
        + this.cost_per_kwh +"'}";
    }                        
}
