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

    @Column(unique = true, length = 50, nullalble = false)
    private String email_addr;

    @Column(unique = false, length = 30, nullable = false)
    private String first_name;

    @Column(unique = false, length = 30, nullable = false)
    private String last_name;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id", referencedColumnName = "id" , nullable = false)
    private Address address;

    @Column(unique = false, nullable = true)
    private Date date_of_birth;

    StationOwner() {}

	public StationOwner(Integer id, String username, String password, String email_addr, String first_name, String last_name, Address address, Date date_of_birth) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.email_addr = email_addr;
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.date_of_birth = date_of_birth;
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

	public String getEmail_addr() {
		return this.email_addr;
	}

	public void setEmail_addr(String email_addr) {
		this.email_addr=email_addr;
	}

	public String getFirst_name() {
		return this.first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name=first_name;
	}

	public String getLast_name() {
		return this.last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name=last_name;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address=address;
	}

	public Date getDate_of_birth() {
		return this.date_of_birth;
	}

	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth=date_of_birth;
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
			Objects.equals(this.email_addr, u.email_addr) &&
			Objects.equals(this.first_name, u.first_name) &&
			Objects.equals(this.last_name, u.last_name) &&
			Objects.equals(this.address, u.address) &&
			Objects.equals(this.date_of_birth, u.date_of_birth);
	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.username,
			this.password,
			this.email_addr,
			this.first_name,
			this.last_name,
			this.address,
			this.date_of_birth);
    }
    
    @Override
    public String toString() {
        return "Station Owner{" + "ID='" + this.id + "', Username='" + this.username + "', Password='" + this.password 
        + "', Email Address='" + this.email_addr + "', First Name='" + this.first_name + "', Last Name='" + this.last_name 
        + "', Address='" + this.address +"', Date of Birth='" + this.date_of_birth +"'}";
    }
}
