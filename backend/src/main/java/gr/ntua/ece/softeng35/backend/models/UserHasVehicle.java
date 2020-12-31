package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class UserHasVehicle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user", nullable = false )
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="vehicle", nullable = false)
    private Vehicle vehicle;

    UserHasVehicle() {}

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
            this.id=id;
    }

    public User getUser() {
            return this.user;
    }

    public void setUser(User user) {
            this.user=user;
    }

    public Vehicle getVehicle() {
            return this.vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
            this.vehicle=vehicle;
    }

    public UserHasVehicle(Integer id, User user, Vehicle vehicle) {
            this.id = id;
            this.user = user;
            this.vehicle = vehicle;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof UserHasVehicle)) return false;
            UserHasVehicle u = (UserHasVehicle) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.user, u.user) &&
                    Objects.equals(this.vehicle, u.vehicle);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.user,
                    this.vehicle);
    }

    @Override 
    public String toString() {
            return "UserHasVehicle{" + "id='" + this.id + "', user='" + this.user + "', vehicle=" + this.vehicle +"'}";
    }
}

