package com.codezero.web.service;

import java.io.IOException;
import java.util.Collections;

import org.json.JSONException;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class CrowdnesServiceImpl implements CrowdnessService {

	private final RestTemplate restTemplate;

	public CrowdnesServiceImpl(RestTemplateBuilder restTemplateBuilder) {
		this.restTemplate = restTemplateBuilder.build();
	}
	  
	@Override
	public void requestCalculation(int line, int subline, String trainId) throws IOException, JSONException {
		String url = String.format("http://127.0.0.1:5000/train"+ "?line=%d&subline=%d&train_id=%s", line, subline, trainId);
		// Method 1: use getForObject
	    //String results = restTemplate.getForObject(url, String.class);
		//System.out.println(results);
		
		// Method 2: use exchange with headers
		HttpHeaders headers = new HttpHeaders();
		//headers.setContentType(MediaType.APPLICATION_JSON);
		headers.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
		HttpEntity request = new HttpEntity(headers);
		
		ResponseEntity<String> response = restTemplate.exchange(
		        url,
		        HttpMethod.GET,
		        request,
		        String.class
		);
		
		if (response.getStatusCode() == HttpStatus.OK) {
		    System.out.println("Request Successful.");
		    System.out.println(response.getBody());
		} else {
		    System.out.println("Request Failed");
		    System.out.println(response.getStatusCode());
		}   
	}
}
