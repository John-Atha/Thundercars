package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class CurrentProvider {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 300, nullable = true)
    private String name;

    @OneToMany(mappedBy="currentProvider")
    private Set<ChargingStation> chargingStations;

    @ManyToOne
    @JoinColumn(name = "country_id", nullable=true)
    private Country country;

    @PreRemove
    private void removeCurrentProvider(){
        for (ChargingStation station : chargingStations) {
            station.setCurrentProvider(null);
        }
    }

    CurrentProvider() {}
            
    public CurrentProvider(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer getId() {
            return this.id;
    }

    public void setId(Integer id) {
            this.id=id;
    }

    public String getName() {
            return this.name;
    }

    public void setName(String name) {
            this.name=name;
    }

    public Country getCountry() {
        return this.country;
    }
    
    public void setCountry(Country country) {
        this.country=country;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof CurrentProvider)) return false;
            CurrentProvider u = (CurrentProvider) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.name, u.name) &&
                    Objects.equals(this.country, u.country);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.name,
                    this.country);
    }

    @Override
    public String toString() {
      return "Current Provider{" + "ID=" + this.id + ", Name='" + this.name + "'', Country='" + this.country +"'}";
    }

}
