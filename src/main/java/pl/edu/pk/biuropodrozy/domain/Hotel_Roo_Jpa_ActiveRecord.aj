// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pl.edu.pk.biuropodrozy.domain.Hotel;

privileged aspect Hotel_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Hotel.entityManager;
    
    public static final EntityManager Hotel.entityManager() {
        EntityManager em = new Hotel().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Hotel.countHotels() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Hotel o", Long.class).getSingleResult();
    }
    
    public static List<Hotel> Hotel.findAllHotels() {
        return entityManager().createQuery("SELECT o FROM Hotel o", Hotel.class).getResultList();
    }
    
    public static Hotel Hotel.findHotel(Long id) {
        if (id == null) return null;
        return entityManager().find(Hotel.class, id);
    }
    
    public static List<Hotel> Hotel.findHotelEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Hotel o", Hotel.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Hotel.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Hotel.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Hotel attached = Hotel.findHotel(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Hotel.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Hotel.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Hotel Hotel.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Hotel merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}