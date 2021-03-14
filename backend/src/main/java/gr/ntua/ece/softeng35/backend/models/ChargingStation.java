package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;


@Entity
public class ChargingStation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = true)
    private String uuid;

	@ManyToOne
	@JoinColumn(name = "current_provider_id", nullable = true)
	private CurrentProvider currentProvider;

	@ManyToOne
	@JoinColumn(name = "station_owner_id", nullable = true)
	private StationOwner stationOwner;

    @ManyToOne
    @JoinColumn(name = "operator_id" , nullable = true)
    private Operator operator;

	
    @ManyToOne
    @JoinColumn(name = "usage_type_id" , nullable = true)
    private UsageType usageType;

	@OneToMany(mappedBy="chargingStation")
	private Set<ChargingProcess> chargingProcesses;

    @OneToOne
    @JoinColumn(name = "address_id", referencedColumnName = "id" , nullable = true)
    private Address address;

    @Column(unique = false , length = 1000 , nullable = true)
    private String comments;

    @Column(unique = false, length = 60, nullable = true)
    private Date dateLastConfirmed;

    @Column(unique = false, length = 60, nullable = true)
    private Date dateLastStatusUpdate;

    @Column(unique = false, length = 60, nullable = true)
    private Date dateCreated;

    @ManyToOne
    @JoinColumn(name = "status_type_id" , nullable = true)
    private StatusType statusType;

    @ManyToOne
    @JoinColumn(name = "submission_status_id" , nullable = true)
    private SubmissionStatus submissionStatus;

    // @Column(unique = false , nullable = true)
    // public Blob media_items;

    @Column(unique = false, nullable = true)
	private Double rating;

    @Column(unique = false, nullable = true)
	private Double costPerKwh;

	@OneToMany(mappedBy="chargingStation")
	private Set<ChargingStationSpots> chargingStationSpots;
	
    @PreRemove
    private void removeStation(){
        for (ChargingProcess process : chargingProcesses) {
            process.setChargingStation(null);
        }
        for (ChargingStationSpots chargingStationSpot : chargingStationSpots) {
            chargingStationSpot.setChargingStation(null);
		}
    }

	public ChargingStation() {}

    public ChargingStation(Integer id, String uuid, Operator operator, UsageType usageType, Address address, String comments, Date dateLastConfirmed, Date dateLastStatusUpdate, Date dateCreated, StatusType statusType, SubmissionStatus submissionStatus, /*Blob media_items, */Double rating, Double costPerKwh, StationOwner stationOwner) {
		this.id = id;
		this.uuid = uuid;
		this.operator = operator;
		this.usageType = usageType;
		this.address = address;
		this.comments = comments;
		this.dateLastConfirmed = dateLastConfirmed;
		this.dateLastStatusUpdate = dateLastStatusUpdate;
		this.dateCreated = dateCreated;
		this.statusType = statusType;
		this.submissionStatus = submissionStatus;
	//	this.media_items = media_items;
		this.rating = rating;
		this.costPerKwh = costPerKwh;
		this.stationOwner = stationOwner;
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

	public StationOwner getStationOwner() {
		return this.stationOwner;
	}

	public void setStationOwner(StationOwner stationOwner) {
		this.stationOwner=stationOwner;
	}

	public CurrentProvider getCurrentProvider() {
		return this.currentProvider;
	}

	public void setCurrentProvider(CurrentProvider currentProvider) {
		this.currentProvider=currentProvider;
	}

	public UsageType getUsageType() {
		return this.usageType;
	}

	public void setUsageType(UsageType usageType) {
		this.usageType=usageType;
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

	public Date getDateLastConfirmed() {
		return this.dateLastConfirmed;
	}

	public void setDateLastConfirmed(Date dateLastConfirmed) {
		this.dateLastConfirmed=dateLastConfirmed;
	}

	public Date getDateLastStatusUpdate() {
		return this.dateLastStatusUpdate;
	}

	public void setDateLastStatusUpdate(Date dateLastStatusUpdate) {
		this.dateLastStatusUpdate=dateLastStatusUpdate;
	}

	public Date getDateCreated() {
		return this.dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated=dateCreated;
	}

	public StatusType getStatusType() {
		return this.statusType;
	}

	public void setStatusType(StatusType statusType) {
		this.statusType=statusType;
	}

	public SubmissionStatus getSubmissionStatus() {
		return this.submissionStatus;
	}

	public void setSubmissionStatus(SubmissionStatus submissionStatus) {
		this.submissionStatus=submissionStatus;
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

	public Double getCostPerKwh() {
		return this.costPerKwh;
	}

	public void setCostPerKwh(Double costPerKwh) {
		this.costPerKwh=costPerKwh;
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
			Objects.equals(this.currentProvider, u.currentProvider) &&
			Objects.equals(this.usageType, u.usageType) &&
			Objects.equals(this.address, u.address) &&
			Objects.equals(this.comments, u.comments) &&
			Objects.equals(this.dateLastConfirmed, u.dateLastConfirmed) &&
			Objects.equals(this.dateLastStatusUpdate, u.dateLastStatusUpdate) &&
			Objects.equals(this.dateCreated, u.dateCreated) &&
			Objects.equals(this.statusType, u.statusType) &&
			Objects.equals(this.submissionStatus, u.submissionStatus) &&
		//	Objects.equals(this.media_items, u.media_items) &&
			Objects.equals(this.rating, u.rating) &&
			Objects.equals(this.costPerKwh, u.costPerKwh) &&
			Objects.equals(this.stationOwner, u.stationOwner);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.uuid,
			this.operator,
			this.currentProvider,
			this.usageType,
			this.address,
			this.comments,
			this.dateLastConfirmed,
			this.dateLastStatusUpdate,
			this.dateCreated,
			this.statusType,
			this.submissionStatus,
		//	this.media_items,
			this.rating,
			this.costPerKwh,
			this.stationOwner);
	}



    @Override
    public String toString() {
        return "Charging Station{" + "ID='" + this.id + "', UUID='" + this.uuid + "', Operator='" + this.operator 
        + "', Current Provider='" + this.currentProvider + "', type='" + this.usageType + "', Address='" + this.address + "', comments='"
        + this.comments + "', Last Date Confirmed='" + this.dateLastConfirmed +"', Last status Update Date='" 
        + this.dateLastStatusUpdate + "', Date Created='" + this.dateCreated + "', Status Type='" + this.statusType
        + "', Submission Status='" + this.submissionStatus + "', Rating='"+ this.rating + "', Cost per kWh='" 
        + this.costPerKwh +"', Station Owner='" + this.stationOwner + "''}";
    }                        
}
