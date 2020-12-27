package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;
import javax.persistence.OneToMany;
//import org.springframework.data.annotation.*;
//import javax.swing.plaf.nimbus.State;

@Entity
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 100, nullable = false)
    private String Title;

    @Column(unique = false, length = 100, nullable = true )
    private String AddressLine1;

    @Column(unique = false, length = 100, nullable = true )
    private String AddressLine2;

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

    @Column(unique = true, length = 50, nullable = true )
    private String ContactTelephone1;

    @Column(unique = true, length = 50, nullable = true )
    private String ContactTelephone2;

    @Column(unique = true, length = 50, nullable = true )
    private String ContactEmail;

    @Column(unique = true, length = 100, nullable = true )
    private String AccessComments;   

    @Column(unique = true, length = 100, nullable = true )
    private String RelatedURL;

    @Column(unique = true, length = 100, nullable = true )
    private String GeneralComments;

    /* @Column(nullable = true) */
    /* @MappedCollection(idColumn = "id") */
    /* @MappedCollection */
    /* @Embedded */
    /*@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id")*/

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "country_id", referencedColumnName = "id")
    private Country country;
    

    Address() {}

    public Address(Integer id, String Title, String AddressLine1, String AddressLine2, 
                    String Town, String StateOrProvince, String PostCode, Double latitude, 
                    Double Longtitude, String ContactTelephone1, String ContactTelephone2, 
                    String ContactEmail, String AccessComments, String RelatedURL, String GeneralComments,
                    Country country) {
                        this.id = id;
                        this.Title = Title;
                        this.AddressLine1 = AddressLine1;
                        this.AddressLine2 = AddressLine2;
                        this.Town = Town;
                        this.StateOrProvince = StateOrProvince;
                        this.PostCode = PostCode;
                        this.Latitude = Latitude;
                        this.Longtitude = Longtitude;
                        this.ContactTelephone1 = ContactTelephone1;
                        this.ContactTelephone2 = ContactTelephone2;
                        this.ContactEmail = ContactEmail;
                        this.AccessComments = AccessComments;
                        this.RelatedURL = RelatedURL;
                        this.GeneralComments = GeneralComments;
                        this.country = country;
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

    public String getAddressLine1() {
        return this.AddressLine1;
    }

    public void setAddressLine1(String AddressLine1) {
        this.AddressLine1=AddressLine1;
    }

    public String getAddressLine2() {
        return this.AddressLine2;
    }

    public void setAddressLine2(String AddressLine2) {
        this.AddressLine2=AddressLine2;
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

    public String getContactEmail() {
        return this.ContactEmail;
    }

    public void setContactEmail(String ContactEmail) {
        this.ContactEmail=ContactEmail;
    }

    public String getAccessComments() {
        return this.AccessComments;
    }

    public void setAccessComments(String AccessComments) {
        this.AccessComments=AccessComments;
    }

    public String getRelatedurl() {
        return this.RelatedURL;
    }

    public void setRelatedurl(String RelatedURL) {
        this.RelatedURL=RelatedURL;
    }

    public String getGeneralComments() {
        return this.GeneralComments;
    }

    public void setGeneralComments(String GeneralComments) {
        this.GeneralComments=GeneralComments;
    }

    public Country getCountry() {
        return this.country;
    }

    public void setCountry(Country country) {
        this.country=country;
    }
    

}