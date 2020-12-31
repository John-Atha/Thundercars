package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class ConnectionType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = true)
    private String title;

    @Column(unique = false, length = 50, nullable = true)
	private String formal_name;

	@Column(unique = false, length = 50, nullable = true)
	private String category;
	
	@OneToMany(mappedBy="connection_type")
	private Set<ChargingSpot> charging_spots;

    ConnectionType() {}

	public ConnectionType(Integer id, String title, String formal_name) {
		this.id = id;
		this.title = title;
		this.formal_name = formal_name;
		this.category = category;
	}
	
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id=id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title=title;
	}

	public String getFormal_name() {
		return this.formal_name;
	}

	public void setFormal_name(String formal_name) {
		this.formal_name = formal_name;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof ConnectionType)) return false;
		ConnectionType u = (ConnectionType) o;
		return
			Objects.equals(this.id, u.id) &&
			Objects.equals(this.title, u.title) &&
			Objects.equals(this.formal_name, u.formal_name) &&
			Objects.equals(this.category,u.category) ;

	}

	@Override
	public int hashCode() {
		return Objects.hash(
			this.id,
			this.title,
			this.formal_name,
			this.category);
	}

    @Override
    public String toString() {
        return "Connection Type{" + "ID='" + this.id + "', Title='" + this.title + "', Formal name='" + this.formal_name +"', Category='"+this.category+"'}";
    }   
}
