// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import pl.edu.pk.biuropodrozy.domain.Customer;
import pl.edu.pk.biuropodrozy.domain.Payment;

privileged aspect Payment_Roo_JavaBean {
    
    public Customer Payment.getCustomer() {
        return this.customer;
    }
    
    public void Payment.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    public Boolean Payment.getPaid() {
        return this.paid;
    }
    
    public void Payment.setPaid(Boolean paid) {
        this.paid = paid;
    }
    
}
