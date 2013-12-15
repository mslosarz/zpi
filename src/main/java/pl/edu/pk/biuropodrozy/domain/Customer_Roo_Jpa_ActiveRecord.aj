// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import pl.edu.pk.biuropodrozy.domain.Customer;

privileged aspect Customer_Roo_Jpa_ActiveRecord {
    
    public static long Customer.countCustomers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Customer o", Long.class).getSingleResult();
    }
    
    public static List<Customer> Customer.findAllCustomers() {
        return entityManager().createQuery("SELECT o FROM Customer o", Customer.class).getResultList();
    }
    
    public static Customer Customer.findCustomer(Long id) {
        if (id == null) return null;
        return entityManager().find(Customer.class, id);
    }
    
    public static List<Customer> Customer.findCustomerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Customer o", Customer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Customer Customer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Customer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
