// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unun.domain;

import com.sut.unun.domain.Chili;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Chili_Roo_Jpa_Entity {
    
    declare @type: Chili: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Chili.id;
    
    @Version
    @Column(name = "version")
    private Integer Chili.version;
    
    public Long Chili.getId() {
        return this.id;
    }
    
    public void Chili.setId(Long id) {
        this.id = id;
    }
    
    public Integer Chili.getVersion() {
        return this.version;
    }
    
    public void Chili.setVersion(Integer version) {
        this.version = version;
    }
    
}