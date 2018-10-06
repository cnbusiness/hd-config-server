package com.hd.cloud.configserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 * 
  * @ClassName: ConfigServeApplication
  * @Description: Config Server
  * @author ShengHao shenghaohao@hadoop-tech.com
  * @Company hadoop-tech 
  * @date 2017年11月20日 上午11:56:11
  *
 */
@EnableEurekaClient
@EnableConfigServer
@SpringBootApplication
public class ConfigServeApplication   {

    public static void main(String[] args) {
        SpringApplication.run(ConfigServeApplication.class, args);
    }
}
