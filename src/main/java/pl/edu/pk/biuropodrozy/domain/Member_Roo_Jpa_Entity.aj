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
import pl.edu.pk.biuropodrozy.domain.Member;

privileged aspect Member_Roo_Jpa_Entity {
    
    declare @type: Member: @Entity;
    
    @Id
    @SequenceGenerator(name = "memberGen", sequenceName = "MEMBER_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "memberGen")
    @Column(name = "id")
    private Long Member.id;
    
    @Version
    @Column(name = "version")
    private Integer Member.version;
    
    public Long Member.getId() {
        return this.id;
    }
    
    public void Member.setId(Long id) {
        this.id = id;
    }
    
    public Integer Member.getVersion() {
        return this.version;
    }
    
    public void Member.setVersion(Integer version) {
        this.version = version;
    }
    
}
