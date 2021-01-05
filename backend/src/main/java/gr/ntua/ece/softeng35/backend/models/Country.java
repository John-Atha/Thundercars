package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;
//import org.springframework.data.annotation.*;
@Entity
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 50, nullable = false)
    private String Title;

    @Column(unique = true, length = 10, nullable = true)
    private String ISOCode;

    @Column(unique = false, length = 10, nullable = true)
    private String ContinentCode;

    /*@OneToMany(targetEntity=Address.class, cascade = CascadeType.ALL)*/
    /*@JoinColumn(name="address_fk", referencedColumnName = "id")*/
    /*@OneToMany(fetch = FetchType.LAZY, mappedBy = "country_of_addres")
    private List<Address> addresses;*/
    
    /*@OneToOne(mappedBy = "country")
    private Address address;*/
    
    @OneToMany(mappedBy="country")
    private Set<Address> addresses;

    @OneToMany(mappedBy="country")
    private Set<UserAddress> useraddresses;

    @OneToMany(mappedBy="country")
    private Set<CurrentProvider> current_providers;

    @PreRemove
    private void removeCountry(){
        for (UserAddress usAdd : useraddresses) {
            usAdd.setCountry(null);
        }
        for (Address addr : addresses) {
            addr.setCountry(null);
        }
        for (CurrentProvider curr : current_providers) {
            curr.setCountry(null);
        }
    }

    Country() {}

    public Country(String Title, String ISOCode, String ContinentCode) {
        this.Title = Title;
        this.ISOCode = ISOCode;
        this.ContinentCode = ContinentCode;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }
        
    public String getTitle() {
        return this.Title;
    }

    public void setTitle(String Title) {
        this.Title=Title;
    }

    public String getISOCode() {
        return this.ISOCode;
    }

    public void setISOCode(String ISOCode) {
        this.ISOCode=ISOCode;
    }

    public String getContinentCode() {
        return this.ContinentCode;
    }

    public void setContinentCode(String ContinentCode) {
        this.ContinentCode=ContinentCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this==o) return true;
        if (!(o instanceof Country)) return false;
        Country u = (Country) o;
        return 
            Objects.equals(this.id, u.id) &&
            Objects.equals(this.Title, u.Title) &&
            Objects.equals(this.ISOCode, u.ISOCode) &&
            Objects.equals(this.ContinentCode, u.ContinentCode);
    }

    @Override
    public int hashCode() {
        return Objects.hash( this.id, this.Title, this.ISOCode, this.ContinentCode);
    } 

    @Override
    public String toString() {
        return "Country{" + 
                            "id=" + this.id + ", " +
                            "Title='" + this.Title + "', " +
                            "ISOCode='" + this.ISOCode + "', " +
                            "ContinentCode='" + this.ContinentCode + "'}";
    }
    
}