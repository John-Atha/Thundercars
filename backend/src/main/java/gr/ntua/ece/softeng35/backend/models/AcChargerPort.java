package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class AcChargerPort {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 100, nullable = true )
    private String portname;

    @ManyToOne
    @JoinColumn(name = "ac_charger_id", nullable = false )
    private AcCharger acCharger;

    AcChargerPort(){}
    
    public AcChargerPort(Integer id, String portname, AcCharger acCharger) {
            this.id = id;
            this.portname = portname;
            this.acCharger = acCharger;
    }
    
    public Integer getId() {
            return this.id;
    }

    public void setId(Integer id) {
            this.id=id;
    }

    public String getPortname() {
            return this.portname;
    }

    public void setPortname(String portname) {
            this.portname=portname;
    }

    public AcCharger getAcCharger() {
            return this.acCharger;
    }

    public void setAcCharger(AcCharger acCharger) {
            this.acCharger=acCharger;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof AcChargerPort)) return false;
            AcChargerPort u = (AcChargerPort) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.portname, u.portname) &&
                    Objects.equals(this.acCharger, u.acCharger);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.portname,
                    this.acCharger);
    }

    @Override
    public String toString() {
            return "AcChargerPort{" + "id=" + this.id + ", portname='" + this.portname +"', acCharger=" + acCharger +"}";
    }
}