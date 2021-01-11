package com.example.demo;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class HttpRequestTest {

	@LocalServerPort
	private int port;

	@Autowired
	private TestRestTemplate restTemplate;

	@Test
	public void greetingShouldReturnDefaultMessage() {

		System.out.println("Port ::: " + port);
		System.out.println(
				"Result ::: " + this.restTemplate.getForObject("http://localhost:" + port + "/hi", String.class));
		Assertions.assertThat(this.restTemplate.getForObject("http://localhost:" + port + "/hi", String.class))
				.contains("He");

	}
}
