// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import pl.edu.pk.biuropodrozy.domain.Trip;

privileged aspect Trip_Roo_Equals {
    
    public boolean Trip.equals(Object obj) {
        if (!(obj instanceof Trip)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Trip rhs = (Trip) obj;
        return new EqualsBuilder().append(breakfast, rhs.breakfast).append(cost, rhs.cost).append(description, rhs.description).append(hotel, rhs.hotel).append(id, rhs.id).append(location, rhs.location).append(name, rhs.name).isEquals();
    }
    
    public int Trip.hashCode() {
        return new HashCodeBuilder().append(breakfast).append(cost).append(description).append(hotel).append(id).append(location).append(name).toHashCode();
    }
    
}