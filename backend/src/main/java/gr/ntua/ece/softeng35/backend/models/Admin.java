package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class Admin {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @Column(unique = true, length = 50, nullable = false)
  private String username;

  @Column(unique = false, length = 100, nullable = false)
  private String password;
  
  @Column(unique = true, length = 50, nullable = true)
  private String emailAddr;

  @Column(unique = false, length = 30, nullable = true)
  private String firstName;

  @Column(unique = false, length = 30, nullable = true)
  private String lastName;

  @Column(unique = false, length = 60, nullable = true)
  private Date dateOfBirth;

  public Admin() {}

  public Admin(String username, String password, String emailAddr, String firstName, String lastName, Date dateOfBirth, UserAddress address) {
    this.username = username;
    this.password = password;
    this.emailAddr = emailAddr;
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfBirth = dateOfBirth;
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


  @Override
  public boolean equals(Object o) {
          if (this == o) return true;
          if (!(o instanceof Admin)) return false;
          Admin u = (Admin) o;
          return
                  Objects.equals(this.username, u.username) &&
                  Objects.equals(this.password, u.password) &&
                  Objects.equals(this.emailAddr, u.emailAddr) &&
                  Objects.equals(this.firstName, u.firstName) &&
                  Objects.equals(this.lastName, u.lastName) &&
                  Objects.equals(this.dateOfBirth, u.dateOfBirth); 
  }

  @Override
  public int hashCode() {
          return Objects.hash(
                  this.username,
                  this.password,
                  this.emailAddr,
                  this.firstName,
                  this.lastName,
                  this.dateOfBirth);
  }

  @Override
  public String toString() {
    return "Admin{" + "id=" + this.id + ", username='" + this.username + "'}";
  }
}