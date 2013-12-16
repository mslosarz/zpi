// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;
import pl.edu.pk.biuropodrozy.domain.Trip;

privileged aspect Trip_Roo_Jpa_Entity {
    
    declare @type: Trip: @Entity;
    
    @Id
    @SequenceGenerator(name = "tripGen", sequenceName = "TRIP_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "tripGen")
    @Column(name = "id")
    private Long Trip.id;
    
    @Version
    @Column(name = "version")
    private Integer Trip.version;
    
    public Long Trip.getId() {
        return this.id;
    }
    
    public void Trip.setId(Long id) {
        this.id = id;
    }
    
    public Integer Trip.getVersion() {
        return this.version;
    }
    
    public void Trip.setVersion(Integer version) {
        this.version = version;
    }
    
}