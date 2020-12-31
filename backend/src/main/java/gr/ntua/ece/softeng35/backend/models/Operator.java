package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;

@Entity
public class Operator {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 50, nullable = true)
    private String title;

    @Column(unique = false, length = 50, nullable = true)
    private String website_url;

    @Column(unique = false, length = 500, nullable = true)
    private  String comments;

    @Column(unique = false, length = 50, nullable = true)
    private String primary_phone;

    @Column(unique = false, length = 50, nullable = true)
    private String secondary_phone;

    @Column(nullable = true)
    private boolean is_private_individual;

    @Column(unique = false, length = 50, nullable = true)
    private String booking_url;

    @Column(unique = false, length = 50, nullable = true)
    private String contact_email;

    @Column(unique = false, length = 50, nullable = true)
    private String fault_report_email;

    @Column(nullable = true)
    private boolean is_restricted_edit;

    @OneToMany(mappedBy="operator")
    private Set<ChargingStation> charging_stations ;

    Operator() {}

    public Operator(Integer id, String title, String website_url, String comments, String primary_phone,
                        String secondary_phone, Boolean is_private_individual, String booking_url,
                        String contact_email, String fault_report_email, Boolean is_restricted_edit ){
                        
                        this.id = id;
                        this.title = title;
                        this.website_url = website_url;
                        this.comments = comments;
                        this.primary_phone = primary_phone;
                        this.secondary_phone = secondary_phone;
                        this.is_private_individual = is_private_individual;
                        this.booking_url = booking_url;
                        this.contact_email = contact_email;
                        this.fault_report_email = fault_report_email;
                        this.is_restricted_edit = is_restricted_edit;
                                                
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

    public String getWebsite_url() {
        return this.website_url;
    }

    public void setWebsite_url(String website_url) {
        this.website_url=website_url;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments=comments;
    }

    public String getPrimary_phone() {
        return this.primary_phone;
    }

    public void setPrimary_phone(String primary_phone) {
        this.primary_phone=primary_phone;
    }

    public String getSecondary_phone() {
        return this.secondary_phone;
    }

    public void setSecondary_phone(String secondary_phone) {
        this.secondary_phone=secondary_phone;
    }

    public Boolean getIs_private_individual() {
        return this.is_private_individual;
    }

    public void setIs_private_individual(Boolean is_private_individual) {
        this.is_private_individual=is_private_individual;
    }

    public String getBooking_url() {
        return this.booking_url;
    }

    public void setBooking_url(String booking_url) {
        this.booking_url=booking_url;
    }

    public String getContact_email() {
        return this.contact_email;
    }

    public void setContact_email(String contact_email) {
        this.contact_email=contact_email;
    }

    public String getFault_report_email() {
        return this.fault_report_email;
    }

    public void setFault_report_email(String fault_report_email) {
        this.fault_report_email=fault_report_email;
    }

    public Boolean getIs_restricted_edit() {
        return this.is_restricted_edit;
    }

    public void setIs_restricted_edit(Boolean is_restricted_edit) {
        this.is_restricted_edit=is_restricted_edit;
    }
                    
                    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Operator)) return false;
        Operator u = (Operator) o;
        return
            Objects.equals(this.id, u.id) &&
            Objects.equals(this.title, u.title) &&
            Objects.equals(this.website_url, u.website_url) &&
            Objects.equals(this.comments, u.comments) &&
            Objects.equals(this.primary_phone, u.primary_phone) &&
            Objects.equals(this.secondary_phone, u.secondary_phone) &&
            Objects.equals(this.is_private_individual, u.is_private_individual) &&
            Objects.equals(this.booking_url, u.booking_url) &&
            Objects.equals(this.contact_email, u.contact_email) &&
            Objects.equals(this.fault_report_email, u.fault_report_email) &&
            Objects.equals(this.is_restricted_edit, u.is_restricted_edit);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
            this.id,
            this.title,
            this.website_url,
            this.comments,
            this.primary_phone,
            this.secondary_phone,
            this.is_private_individual,
            this.booking_url,
            this.contact_email,
            this.fault_report_email,
            this.is_restricted_edit);
    }

    @Override
    public String toString() {
        return "Operator{" + "id='" + this.id + "', title='" + this.title + "', website_url='" + this.website_url 
        + "', comments='" + this.comments + "', primary_phone='" + this.primary_phone + "', secondary_phone='"
        + this.secondary_phone + "', is_private_individual='" + this.is_private_individual +"', booking_url='" 
        + this.booking_url + "', contact_email='" + this.contact_email + "', fault_report_email='" + this.fault_report_email
        + "', is_restricted_edit='" + this.is_restricted_edit + "'}";
    }                        
}                        
