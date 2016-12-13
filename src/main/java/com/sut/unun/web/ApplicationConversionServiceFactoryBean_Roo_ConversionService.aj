// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unun.web;

import com.sut.unun.domain.Chili;
import com.sut.unun.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Chili, String> ApplicationConversionServiceFactoryBean.getChiliToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sut.unun.domain.Chili, java.lang.String>() {
            public String convert(Chili chili) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Chili> ApplicationConversionServiceFactoryBean.getIdToChiliConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sut.unun.domain.Chili>() {
            public com.sut.unun.domain.Chili convert(java.lang.Long id) {
                return Chili.findChili(id);
            }
        };
    }
    
    public Converter<String, Chili> ApplicationConversionServiceFactoryBean.getStringToChiliConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sut.unun.domain.Chili>() {
            public com.sut.unun.domain.Chili convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Chili.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getChiliToStringConverter());
        registry.addConverter(getIdToChiliConverter());
        registry.addConverter(getStringToChiliConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}