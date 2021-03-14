package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;

@Entity
public class Operator {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 200, nullable = true)
    private String title;

    @Column(unique = false, length = 200, nullable = true)
    private String websiteUrl;

    @Column(unique = false, length = 500, nullable = true)
    private  String comments;

    @Column(unique = false, length = 150, nullable = true)
    private String primaryPhone;

    @Column(unique = false, length = 150, nullable = true)
    private String secondaryPhone;

    @Column(nullable = true)
    private Boolean isPrivateIndividual;

    @Column(unique = false, length = 200, nullable = true)
    private String bookingUrl;

    @Column(unique = false, length = 200, nullable = true)
    private String contactEmail;

    @Column(unique = false, length = 200, nullable = true)
    private String FaultReportEmail;

    @Column(nullable = true)
    private Boolean isRestrictedEdit;

    @OneToMany(mappedBy="operator")
    private Set<ChargingStation> chargingStations ;

    @PreRemove
    private void removeOperator(){
        for (ChargingStation station : chargingStations) {
            station.setOperator(null);
        }
    }


    Operator() {}

    public Operator(Integer id, String title, String websiteUrl, String comments, String primaryPhone,
                        String secondaryPhone, Boolean isPrivateIndividual, String bookingUrl,
                        String contactEmail, String FaultReportEmail, Boolean isRestrictedEdit ){
                        
                        this.id = id;
                        this.title = title;
                        this.websiteUrl = websiteUrl;
                        this.comments = comments;
                        this.primaryPhone = primaryPhone;
                        this.secondaryPhone = secondaryPhone;
                        this.isPrivateIndividual = isPrivateIndividual;
                        this.bookingUrl = bookingUrl;
                        this.contactEmail = contactEmail;
                        this.FaultReportEmail = FaultReportEmail;
                        this.isRestrictedEdit = isRestrictedEdit;
                                                
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

    public String getWebsiteUrl() {
        return this.websiteUrl;
    }

    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl=websiteUrl;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String comments) {
        this.comments=comments;
    }

    public String getPrimaryPhone() {
        return this.primaryPhone;
    }

    public void setPrimaryPhone(String primaryPhone) {
        this.primaryPhone=primaryPhone;
    }

    public String getSecondaryPhone() {
        return this.secondaryPhone;
    }

    public void setSecondaryPhone(String secondaryPhone) {
        this.secondaryPhone=secondaryPhone;
    }

    public Boolean getIsPrivateIndividual() {
        return this.isPrivateIndividual;
    }

    public void setIsPrivateIndividual(Boolean isPrivateIndividual) {
        this.isPrivateIndividual=isPrivateIndividual;
    }

    public String getBookingUrl() {
        return this.bookingUrl;
    }

    public void setBookingUrl(String bookingUrl) {
        this.bookingUrl=bookingUrl;
    }

    public String getContactEmail() {
        return this.contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail=contactEmail;
    }

    public String getFaultReportEmail() {
        return this.FaultReportEmail;
    }

    public void setFaultReportEmail(String FaultReportEmail) {
        this.FaultReportEmail=FaultReportEmail;
    }

    public Boolean getIsRestrictedEdit() {
        return this.isRestrictedEdit;
    }

    public void setIsRestrictedEdit(Boolean isRestrictedEdit) {
        this.isRestrictedEdit=isRestrictedEdit;
    }
                    
                    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Operator)) return false;
        Operator u = (Operator) o;
        return
            Objects.equals(this.id, u.id) &&
            Objects.equals(this.title, u.title) &&
            Objects.equals(this.websiteUrl, u.websiteUrl) &&
            Objects.equals(this.comments, u.comments) &&
            Objects.equals(this.primaryPhone, u.primaryPhone) &&
            Objects.equals(this.secondaryPhone, u.secondaryPhone) &&
            Objects.equals(this.isPrivateIndividual, u.isPrivateIndividual) &&
            Objects.equals(this.bookingUrl, u.bookingUrl) &&
            Objects.equals(this.contactEmail, u.contactEmail) &&
            Objects.equals(this.FaultReportEmail, u.FaultReportEmail) &&
            Objects.equals(this.isRestrictedEdit, u.isRestrictedEdit);
    }

    @Override
    public int hashCode() {
        return Objects.hash(
            this.id,
            this.title,
            this.websiteUrl,
            this.comments,
            this.primaryPhone,
            this.secondaryPhone,
            this.isPrivateIndividual,
            this.bookingUrl,
            this.contactEmail,
            this.FaultReportEmail,
            this.isRestrictedEdit);
    }

    @Override
    public String toString() {
        return "Operator{" + "id='" + this.id + "', title='" + this.title + "', websiteUrl='" + this.websiteUrl 
        + "', comments='" + this.comments + "', primaryPhone='" + this.primaryPhone + "', secondaryPhone='"
        + this.secondaryPhone + "', isPrivateIndividual='" + this.isPrivateIndividual +"', bookingUrl='" 
        + this.bookingUrl + "', contactEmail='" + this.contactEmail + "', FaultReportEmail='" + this.FaultReportEmail
        + "', isRestrictedEdit='" + this.isRestrictedEdit + "'}";
    }                        
}                        
