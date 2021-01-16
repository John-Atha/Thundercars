package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class StationOwner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = false)
    private String username;

    @Column(unique = false, length = 100, nullable = false)
    private String password;

    @Column(unique = true, length = 50, nullable = false)
    private String emailAddr;

    @Column(unique = false, length = 30, nullable = false)
    private String firstName;

    @Column(unique = false, length = 30, nullable = false)
    private String lastName;

	@OneToMany(mappedBy="stationOwner")
	private Set<ChargingStation> chargingStations;

    @ManyToOne
    @JoinColumn(name = "address_id", nullable = true)
    private UserAddress address;

    @Column(unique = false, nullable = true)
    private Date dateOfBirth;

    @PreRemove
    private void removeOwner(){
        for (ChargingStation station : chargingStations) {
            station.setStationOwner(null);
        }
    }

    StationOwner() {}

	public StationOwner(Integer id, String username, String password, String emailAddr, String firstName, String lastName, UserAddress address, Date dateOfBirth) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.emailAddr = emailAddr;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
	}
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username=username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password=password;
	}

	public String getEmailAddr() {
		return this.emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
		this.emailAddr=emailAddr;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName=firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName=lastName;
	}

	public UserAddress getAddress() {
		return this.address;
	}

	public void setAddress(UserAddress address) {
		this.address=address;
	}

	public Date getDateOfBirth() {
		return this.dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth=dateOfBirth;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof StationOwner)) return false;
		StationOwner u = (StationOwner) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.username, u.username) &&
			Objects.equals(this.password, u.password) &&
			Objects.equals(this.emailAddr, u.emailAddr) &&
			Objects.equals(this.firstName, u.firstName) &&
			Objects.equals(this.lastName, u.lastName) &&
			Objects.equals(this.address, u.address) &&
			Objects.equals(this.dateOfBirth, u.dateOfBirth);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.username,
			this.password,
			this.emailAddr,
			this.firstName,
			this.lastName,
			this.address,
			this.dateOfBirth);
    }
    
    @Override
    public String toString() {
        return "Station Owner{" + "ID='" + this.id + "', Username='" + this.username + "', Password='" + this.password 
        + "', Email Address='" + this.emailAddr + "', First Name='" + this.firstName + "', Last Name='" + this.lastName 
        + "', Address='" + this.address +"', Date of Birth='" + this.dateOfBirth +"'}";
    }
}
