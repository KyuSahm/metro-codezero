package com.codezero.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;
import com.codezero.web.service.MapService;

@Controller
@RequestMapping("/")
public class MapController {
	@Autowired
	private MapService service;
	
	@RequestMapping(value="/map", method=RequestMethod.GET)
	public String map(@RequestParam(name = "subwayLine", required=false, defaultValue="1,0") String subwayLine, Model model) {
		List<SubwayLineDetail> subwayLineDetailList = service.getSubwayLineDetailList();
		model.addAttribute("subwayLineDetailList", subwayLineDetailList);
		
		String[] lineInfo = subwayLine.split(",");		
		int line = Integer.parseInt(lineInfo[0]);
		int subline = Integer.parseInt(lineInfo[1]);
		
		List<Station> stationList = service.getStationList(line, subline);
		model.addAttribute("line", line);
		model.addAttribute("subline", subline);
		model.addAttribute("stationList", stationList);
		
		return "map";
	}
}
