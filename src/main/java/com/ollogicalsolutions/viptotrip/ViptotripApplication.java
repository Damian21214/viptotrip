package com.ollogicalsolutions.viptotrip;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@EnableTransactionManagement
//@SpringBootApplication(scanBasePackages = {"com.viptotrip"} , exclude = JpaRepositoriesAutoConfiguration.class)
@SpringBootApplication
public class ViptotripApplication {

    public static void main(String[] args) {
        SpringApplication.run(ViptotripApplication.class, args);
    }
}
