package com.ollogicalsolutions.viptotrip.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Configuration
public class InMemoryConfig {
    private final String INITIAL_DATA = "classpath:initial_data.sql";

    @Autowired
    WebApplicationContext ctx;

    @Autowired
    private DataSource datasource;

    @PostConstruct
    public void loadIfInMemory() throws Exception {
        Resource resource = ctx.getResource(INITIAL_DATA);
        ScriptUtils.executeSqlScript(datasource.getConnection(), resource);
    }
}
