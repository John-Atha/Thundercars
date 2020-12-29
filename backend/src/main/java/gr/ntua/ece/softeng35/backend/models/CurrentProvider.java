package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class CurrentProvider {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = true)
    private String name;

	@OneToMany(mappedBy="current_provider")
	private Set<ChargingStation> charging_stations;

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

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof CurrentProvider)) return false;
            CurrentProvider u = (CurrentProvider) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.name, u.name);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.name);
    }

    @Override
    public String toString() {
      return "Current Provider{" + "ID=" + this.id + ", Name='" + this.name +"'}";
    }

}
