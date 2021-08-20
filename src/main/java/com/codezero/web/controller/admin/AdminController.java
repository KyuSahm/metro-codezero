package com.codezero.web.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codezero.web.entity.SubwayLineDetail;
import com.codezero.web.service.MapService;
import com.codezero.web.service.StationService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private StationService stationService;
	@Autowired
	private MapService mapService;
	
	@RequestMapping(value="/update-timetable", method=RequestMethod.GET)
	public String subwayLineList(Model model) {
		List<SubwayLineDetail> subwayLineDetailList = mapService.getSubwayLineDetailList();
		model.addAttribute("subwayLineDetailList", subwayLineDetailList);		
		return "admin/update-timetable";
	}
	
	@RequestMapping(value="/update-timetable", method=RequestMethod.POST)
	public String updateTimetable(@RequestParam(name = "subwayLine") String subwayLine, Model model) {
		
		List<SubwayLineDetail> subwayLineDetailList = mapService.getSubwayLineDetailList();
		model.addAttribute("subwayLineDetailList", subwayLineDetailList);		
		return "admin/update-timetable";
	}
}