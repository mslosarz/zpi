// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.edu.pk.biuropodrozy.domain;

import pl.edu.pk.biuropodrozy.domain.Member;
import pl.edu.pk.biuropodrozy.domain.Trip;
import pl.edu.pk.biuropodrozy.domain.TripMember;

privileged aspect TripMember_Roo_JavaBean {
    
    public Trip TripMember.getTrip() {
        return this.trip;
    }
    
    public void TripMember.setTrip(Trip trip) {
        this.trip = trip;
    }
    
    public Member TripMember.getMember() {
        return this.member;
    }
    
    public void TripMember.setMember(Member member) {
        this.member = member;
    }
    
}
