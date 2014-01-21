// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pl.edu.pk.biuropodrozy.domain.Image;

privileged aspect Image_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Image.entityManager;
    
    public static final List<String> Image.fieldNames4OrderClauseFilter = java.util.Arrays.asList("image", "trip");
    
    public static final EntityManager Image.entityManager() {
        EntityManager em = new Image().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Image.countImages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Image o", Long.class).getSingleResult();
    }
    
    public static List<Image> Image.findAllImages() {
        return entityManager().createQuery("SELECT o FROM Image o", Image.class).getResultList();
    }
    
    public static List<Image> Image.findAllImages(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Image o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Image.class).getResultList();
    }
    
    public static Image Image.findImage(Long id) {
        if (id == null) return null;
        return entityManager().find(Image.class, id);
    }
    
    public static List<Image> Image.findImageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Image o", Image.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Image> Image.findImageEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Image o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Image.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Image.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Image.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Image attached = Image.findImage(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Image.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Image.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Image Image.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Image merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
