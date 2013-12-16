// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import pl.edu.pk.biuropodrozy.domain.Payment;

privileged aspect Payment_Roo_Equals {
    
    public boolean Payment.equals(Object obj) {
        if (!(obj instanceof Payment)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Payment rhs = (Payment) obj;
        return new EqualsBuilder().append(customer, rhs.customer).append(id, rhs.id).append(paid, rhs.paid).append(trip, rhs.trip).isEquals();
    }
    
    public int Payment.hashCode() {
        return new HashCodeBuilder().append(customer).append(id).append(paid).append(trip).toHashCode();
    }
    
}