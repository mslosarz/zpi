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
import pl.edu.pk.biuropodrozy.domain.TripMember;

privileged aspect TripMember_Roo_Jpa_Entity {
    
    declare @type: TripMember: @Entity;
    
    @Id
    @SequenceGenerator(name = "tripMemberGen", sequenceName = "TRIP_MEMBER_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "tripMemberGen")
    @Column(name = "id")
    private Long TripMember.id;
    
    @Version
    @Column(name = "version")
    private Integer TripMember.version;
    
    public Long TripMember.getId() {
        return this.id;
    }
    
    public void TripMember.setId(Long id) {
        this.id = id;
    }
    
    public Integer TripMember.getVersion() {
        return this.version;
    }
    
    public void TripMember.setVersion(Integer version) {
        this.version = version;
    }
    
}
