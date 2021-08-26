package com.codezero.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codezero.web.entity.Train;
import com.codezero.web.service.MapService;
import com.codezero.web.service.StationService;

@Controller
@RequestMapping("/")
public class StationController {
	@Autowired
	private StationService service;
	@Autowired
	private MapService mapService;	
	
	@RequestMapping("/station")
	public String station(@RequestParam(name = "line") int line,
			              @RequestParam(name = "subline") int subline,
						  @RequestParam(name = "station_id") String stationId,
						  @RequestParam(name = "direction") int direction, Model model) {
		int dayType = 1;
		List<Train> trainList = service.getNextTrainList(line, subline, stationId, dayType, direction);
		model.addAttribute("station_id", stationId);
		model.addAttribute("trainList", trainList);
		
		return "station";
	}
	
	@RequestMapping("/realtime-station")
	public String realTimeStation(@RequestParam(name = "line") int line,
			              		  @RequestParam(name = "subline") int subline,
			              		  @RequestParam(name = "station_id") String stationId,
			              		  @RequestParam(name = "direction") int direction, Model model) {
		
		int subwayCode = mapService.getSubwayCode(line, subline);
		System.out.println("subwayCode" + subwayCode);
		
		int dayType = 1;
		List<Train> trainList = service.getNextTrainList(line, subline, stationId, dayType, direction);
		model.addAttribute("station_id", stationId);
		model.addAttribute("trainList", trainList);
		
		return "station";
	}
}
