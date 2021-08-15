package com.codezero.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codezero.web.entity.Train;
import com.codezero.web.service.StationService;

@Controller
@RequestMapping("/")
public class StationController {
	@Autowired
	private StationService service;
	
	@RequestMapping("/station")
	public String station(Model model) {
		List<Train> trainList = service.getNextTrainList();
		model.addAttribute("trainList", trainList);
		
		return "station";
	}
}
