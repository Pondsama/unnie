// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unun.domain;

import com.sut.unun.domain.AccountWifi;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect AccountWifi_Roo_Jpa_Entity {
    
    declare @type: AccountWifi: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long AccountWifi.id;
    
    @Version
    @Column(name = "version")
    private Integer AccountWifi.version;
    
    public Long AccountWifi.getId() {
        return this.id;
    }
    
    public void AccountWifi.setId(Long id) {
        this.id = id;
    }
    
    public Integer AccountWifi.getVersion() {
        return this.version;
    }
    
    public void AccountWifi.setVersion(Integer version) {
        this.version = version;
    }
    
}