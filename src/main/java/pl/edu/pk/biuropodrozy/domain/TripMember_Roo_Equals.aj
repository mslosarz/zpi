// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import pl.edu.pk.biuropodrozy.domain.TripMember;

privileged aspect TripMember_Roo_Equals {
    
    public boolean TripMember.equals(Object obj) {
        if (!(obj instanceof TripMember)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        TripMember rhs = (TripMember) obj;
        return new EqualsBuilder().append(id, rhs.id).append(member, rhs.member).append(trip, rhs.trip).isEquals();
    }
    
    public int TripMember.hashCode() {
        return new HashCodeBuilder().append(id).append(member).append(trip).toHashCode();
    }
    
}