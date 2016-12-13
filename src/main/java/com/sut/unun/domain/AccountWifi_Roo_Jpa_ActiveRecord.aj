// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unun.domain;

import com.sut.unun.domain.AccountWifi;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AccountWifi_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AccountWifi.entityManager;
    
    public static final List<String> AccountWifi.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager AccountWifi.entityManager() {
        EntityManager em = new AccountWifi().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AccountWifi.countAccountWifis() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AccountWifi o", Long.class).getSingleResult();
    }
    
    public static List<AccountWifi> AccountWifi.findAllAccountWifis() {
        return entityManager().createQuery("SELECT o FROM AccountWifi o", AccountWifi.class).getResultList();
    }
    
    public static List<AccountWifi> AccountWifi.findAllAccountWifis(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AccountWifi o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AccountWifi.class).getResultList();
    }
    
    public static AccountWifi AccountWifi.findAccountWifi(Long id) {
        if (id == null) return null;
        return entityManager().find(AccountWifi.class, id);
    }
    
    public static List<AccountWifi> AccountWifi.findAccountWifiEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AccountWifi o", AccountWifi.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<AccountWifi> AccountWifi.findAccountWifiEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AccountWifi o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AccountWifi.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AccountWifi.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AccountWifi.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AccountWifi attached = AccountWifi.findAccountWifi(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AccountWifi.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AccountWifi.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AccountWifi AccountWifi.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AccountWifi merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
