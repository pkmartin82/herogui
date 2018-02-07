package com.pkm.hero.gui.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pkm.hero.dto.Hero;

@Controller
@RequestMapping(value = "/create")
public class CreateHeroController extends GuiController {

	public CreateHeroController() {
		super();
	}

	@ModelAttribute(value = "universeList")
	public List<String> getUniverseIdList() {
		List<String> universeList = new ArrayList<String>();

		universeList.add("616");
		universeList.add("1610");
		universeList.add("1982");

		return universeList;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String createHero(Map<String, Object> model) {
		Hero heroForm = new Hero();

		model.put("createHeroForm", heroForm);

		return "createHero";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute("createHeroForm") Hero newHero, Map<String, Object> model) {

		// implement your own registration logic here...

		try {
			Thread.sleep(5000);
		} catch (InterruptedException ie) {
			logger.error(ie);
		}
		
		// for testing purpose:
		logger.info(newHero);

		return "createHeroSuccess";
	}
}
