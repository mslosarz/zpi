// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import pl.edu.pk.biuropodrozy.domain.Customer;

privileged aspect Customer_Roo_Equals {
    
    public boolean Customer.equals(Object obj) {
        if (!(obj instanceof Customer)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Customer rhs = (Customer) obj;
        return new EqualsBuilder().append(firstName, rhs.firstName).append(id, rhs.id).append(lastName, rhs.lastName).append(login, rhs.login).isEquals();
    }
    
    public int Customer.hashCode() {
        return new HashCodeBuilder().append(firstName).append(id).append(lastName).append(login).toHashCode();
    }
    
}