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
import pl.edu.pk.biuropodrozy.domain.Hotel;

privileged aspect Hotel_Roo_Jpa_Entity {
    
    declare @type: Hotel: @Entity;
    
    @Id
    @SequenceGenerator(name = "hotelGen", sequenceName = "HOTEL_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "hotelGen")
    @Column(name = "id")
    private Long Hotel.id;
    
    @Version
    @Column(name = "version")
    private Integer Hotel.version;
    
    public Long Hotel.getId() {
        return this.id;
    }
    
    public void Hotel.setId(Long id) {
        this.id = id;
    }
    
    public Integer Hotel.getVersion() {
        return this.version;
    }
    
    public void Hotel.setVersion(Integer version) {
        this.version = version;
    }
    
}
