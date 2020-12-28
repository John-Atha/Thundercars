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

  @Column(unique = true, length = 100, nullable = false)
  private String password;
  
  @Column(unique = true, length = 50, nullable = false)
  private String email_addr;

  @Column(unique = true, length = 30, nullable = false)
  private String first_name;

  @Column(unique = true, length = 30, nullable = false)
  private String last_name;

  @Column(unique = false, length = 60, nullable = true)
  private Date date_of_birth;

  @ManyToOne(cascade = CascadeType.ALL)
  @JoinColumn(name = "address_id", nullable = true)
  private Address address;

  User() {}

  public User(String username, String password, String email_addr, String first_name, String last_name, Date date_of_birth, Address address) {
    this.username = username;
    this.password = password;
    this.email_addr = email_addr;
    this.first_name = first_name;
    this.last_name = last_name;
    this.date_of_birth = date_of_birth;
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

public Date getDate_of_birth() {
    return this.date_of_birth;
}

public void setDate_of_birth(Date date_of_birth) {
    this.date_of_birth=date_of_birth;
}

public Address getAddress() {
    return this.address;
}

public void setAddress(Address address) {
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
                  Objects.equals(this.email_addr, u.email_addr) &&
                  Objects.equals(this.first_name, u.first_name) &&
                  Objects.equals(this.last_name, u.last_name) &&
                  Objects.equals(this.date_of_birth, u.date_of_birth) &&
                  Objects.equals(this.address, u.address);
  }

  @Override
  public int hashCode() {
          return Objects.hash(
                  this.username,
                  this.password,
                  this.email_addr,
                  this.first_name,
                  this.last_name,
                  this.date_of_birth,
                  this.address);
  }

  @Override
  public String toString() {
    return "User{" + "id=" + this.id + ", username='" + this.username + "'}";
  }
}