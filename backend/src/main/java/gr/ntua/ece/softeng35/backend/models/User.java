package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class User {
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

  @Column(unique = false, length = 60, nullable = true)
  private Date dateOfBirth;

  @ManyToOne
  @JoinColumn(name = "user_address_id", nullable = true)
  private UserAddress address;

  @OneToMany(mappedBy = "user")
  private Set<UserHasVehicle> userhasvehicles;
  @OneToMany(mappedBy="user")
	private Set<ChargingProcess> chargingProcesses ;

  @PreRemove
  private void removeUser(){
      for (UserHasVehicle userHasVehicle : userhasvehicles) {
          userHasVehicle.setUser(null);
      }
      for (ChargingProcess process : chargingProcesses) {
        process.setUser(null);
      }
  }

  User() {}

  public User(String username, String password, String emailAddr, String firstName, String lastName, Date dateOfBirth, UserAddress address) {
    this.username = username;
    this.password = password;
    this.emailAddr = emailAddr;
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfBirth = dateOfBirth;
    this.address = address;
}

  public Integer getId() {
    return this.id;
  }

  public String getUsername() {
    return this.username;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public void setUsername(String username) {
    this.username = username;
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

public Date getDateOfBirth() {
    return this.dateOfBirth;
}

public void setDateOfBirth(Date dateOfBirth) {
    this.dateOfBirth=dateOfBirth;
}

public UserAddress getUserAddress() {
    return this.address;
}

public void setUserAddress(UserAddress address) {
    this.address=address;
}

  @Override
  public boolean equals(Object o) {
          if (this == o) return true;
          if (!(o instanceof User)) return false;
          User u = (User) o;
          return
                  Objects.equals(this.username, u.username) &&
                  Objects.equals(this.password, u.password) &&
                  Objects.equals(this.emailAddr, u.emailAddr) &&
                  Objects.equals(this.firstName, u.firstName) &&
                  Objects.equals(this.lastName, u.lastName) &&
                  Objects.equals(this.dateOfBirth, u.dateOfBirth) &&
                  Objects.equals(this.address, u.address);
  }

  @Override
  public int hashCode() {
          return Objects.hash(
                  this.username,
                  this.password,
                  this.emailAddr,
                  this.firstName,
                  this.lastName,
                  this.dateOfBirth,
                  this.address);
  }

  @Override
  public String toString() {
    return "User{" + "id=" + this.id + ", username='" + this.username + "'}";
  }
}