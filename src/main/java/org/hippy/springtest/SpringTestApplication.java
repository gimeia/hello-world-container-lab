package org.hippy.springtest;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringTestApplication implements CommandLineRunner {

    @Value("${message.welcome}")
    private String welcomeMsg;

    @Override
    public void run(String args[]) throws Exception {
        while (true) {
            System.out.println(welcomeMsg);
            TimeUnit.SECONDS.sleep(3);
        }   
    }

	public static void main(String[] args) {
		SpringApplication.run(SpringTestApplication.class, args);
	}

}
