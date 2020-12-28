package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;
import javax.persistence.OneToMany;
//import org.springframework.data.annotation.*;
//import javax.swing.plaf.nimbus.State;

@Entity
public class UserAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 100, nullable = true )
    private String AddressLine1;

    @Column(unique = false, length = 100, nullable = true )
    private String Town;

    @Column(unique = false, length = 100, nullable = true )
    private String StateOrProvince;

    @Column(unique = false, length = 100, nullable = true )
    private String PostCode;

    @Column(unique = false, nullable = true )
    private Double Latitude;

    @Column(unique = false, nullable = true )
    private Double Longtitude;

    @Column(unique = false, length = 50, nullable = true )
    private String ContactTelephone1;

    @Column(unique = false, length = 50, nullable = true )
    private String ContactTelephone2;

    /* @Column(nullable = true) */
    /* @MappedCollection(idColumn = "id") */
    /* @MappedCollection */
    /* @Embedded */
    /*@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id")*/

    /*@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "country_id", referencedColumnName = "id")
    private Country country;*/

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "country_id", nullable=true)
    private Country country;

    @OneToMany(mappedBy="address")
    private Set<User> users;
    

    UserAddress() {}

    public UserAddress(Integer id, String AddressLine1, String Town, String StateOrProvince, String PostCode, Double latitude, 
                    Double Longtitude, String ContactTelephone1, String ContactTelephone2, Country country) {
                        this.id = id;
                        this.AddressLine1 = AddressLine1;
                        this.Town = Town;
                        this.StateOrProvince = StateOrProvince;
                        this.PostCode = PostCode;
                        this.Latitude = Latitude;
                        this.Longtitude = Longtitude;
                        this.ContactTelephone1 = ContactTelephone1;
                        this.ContactTelephone2 = ContactTelephone2;
                        this.country = country;
    }
    
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public String getUserAddressLine1() {
        return this.AddressLine1;
    }

    public void setUserAddressLine1(String AddressLine1) {
        this.AddressLine1=AddressLine1;
    }

    public String getTown() {
        return this.Town;
    }

    public void setTown(String Town) {
        this.Town=Town;
    }

    public String getStateOrProvince() {
        return this.StateOrProvince;
    }

    public void setStateOrProvince(String StateOrProvince) {
        this.StateOrProvince=StateOrProvince;
    }

    public String getPostcode() {
        return this.PostCode;
    }

    public void setPostcode(String PostCode) {
        this.PostCode=PostCode;
    }

    public Double getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(Double Latitude) {
        this.Latitude=Latitude;
    }

    public Double getLongtitude() {
        return this.Longtitude;
    }

    public void setLongtitude(Double Longtitude) {
        this.Longtitude=Longtitude;
    }

    public String getContactTelephone1() {
        return this.ContactTelephone1;
    }

    public void setContactTelephone1(String ContactTelephone1) {
        this.ContactTelephone1=ContactTelephone1;
    }

    public String getContactTelephone2() {
        return this.ContactTelephone2;
    }

    public void setContactTelephone2(String ContactTelephone2) {
        this.ContactTelephone2=ContactTelephone2;
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
            if (!(o instanceof UserAddress)) return false;
            UserAddress u = (UserAddress) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.AddressLine1, u.AddressLine1) &&
                    Objects.equals(this.Town, u.Town) &&
                    Objects.equals(this.StateOrProvince, u.StateOrProvince) &&
                    Objects.equals(this.PostCode, u.PostCode) &&
                    Objects.equals(this.Latitude, u.Latitude) &&
                    Objects.equals(this.Longtitude, u.Longtitude) &&
                    Objects.equals(this.ContactTelephone1, u.ContactTelephone1) &&
                    Objects.equals(this.ContactTelephone2, u.ContactTelephone2) &&
                    Objects.equals(this.country, u.country);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.AddressLine1,
                    this.Town,
                    this.StateOrProvince,
                    this.PostCode,
                    this.Latitude,
                    this.Longtitude,
                    this.ContactTelephone1,
                    this.ContactTelephone2,
                    this.country);
    }
    
}