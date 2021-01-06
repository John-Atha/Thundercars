package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class DcChargerPort {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = false, length = 100, nullable = true )
    private String portname;

    @ManyToOne
    @JoinColumn(name = "dc_charger_id", nullable = true )
    private DcCharger dc_charger;

    DcChargerPort() {}
    
    public DcChargerPort(Integer id, String portname, DcCharger dc_charger) {
            this.id = id;
            this.portname = portname;
            this.dc_charger = dc_charger;
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

    public DcCharger getDc_charger() {
            return this.dc_charger;
    }

    public void setDc_charger(DcCharger dc_charger) {
            this.dc_charger=dc_charger;
    }

    @Override
    public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof DcChargerPort)) return false;
            DcChargerPort u = (DcChargerPort) o;
            return
                    Objects.equals(this.id, u.id) &&
                    Objects.equals(this.portname, u.portname) &&
                    Objects.equals(this.dc_charger, u.dc_charger);
    }

    @Override
    public int hashCode() {
            return Objects.hash(
                    this.id,
                    this.portname,
                    this.dc_charger);
    }

    @Override
    public String toString() {
            return "DcChargerPort{" + "id=" + this.id + ", portname='" + this.portname +"', dc_charger=" + dc_charger +"}";
    }
}