package com.codezero.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codezero.web.entity.Station;
import com.codezero.web.service.MapService;

@Controller
@RequestMapping("/")
public class MapController {
	@Autowired
	private MapService service;
	
	@RequestMapping("/map")
	public String map(Model model) {
		List<Station> stationList = service.getStationList();
		model.addAttribute("stationList", stationList);
		
		return "map";
	}
}
