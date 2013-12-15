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
import pl.edu.pk.biuropodrozy.domain.Admin;

privileged aspect Admin_Roo_Jpa_Entity {
    
    declare @type: Admin: @Entity;
    
    @Id
    @SequenceGenerator(name = "adminGen", sequenceName = "ADMIN_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "adminGen")
    @Column(name = "id")
    private Long Admin.id;
    
    @Version
    @Column(name = "version")
    private Integer Admin.version;
    
    public Long Admin.getId() {
        return this.id;
    }
    
    public void Admin.setId(Long id) {
        this.id = id;
    }
    
    public Integer Admin.getVersion() {
        return this.version;
    }
    
    public void Admin.setVersion(Integer version) {
        this.version = version;
    }
    
}
