package org.hippy.greetings;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public String index() {
        String msg = "Greetings from Spring Boot, Check Console for way more Hello's!" ;
        System.out.println(msg);
		return msg;
	}

}