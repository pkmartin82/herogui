package com.pkm.hero.gui.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pkm.hero.dto.Hero;
import com.pkm.hero.service.rest.client.HeroRestClient;
import com.pkm.hero.service.rest.exception.HeroRestClientException;

@Controller
@RequestMapping("/list")
public class ListHeroController extends GuiController {

	/**
	 * Default Constructor
	 */
	public ListHeroController() {
		super();
	}

	/**
	 * Method to handle requests per the request mapping
	 * 
	 * Do this for all requests in this class's herolist RequestMapping
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView methodNameDoesNotMatter(ModelMap model) {

		logger.info("Entering method for HTTP-GET herogui");

		List<Hero> heroes = null;

		try {

			//  Create a client of the HeroService
			HeroRestClient client = new HeroRestClient();

			//  Retrieve the list of heroes
			heroes = client.getHeroes();

		} catch (HeroRestClientException e) {
			logger.error("Caught Exception from Hero Rest Client!", e);
			heroes = new ArrayList<Hero>();
		}

		//  Populate the Model with information from the back-end service
		//model.addAttribute("heroList", heroes);

		// Value being returned is the name of the .jsp-page to redirect to
		// when trying to go to http://localhost:8080/herogui/herogui
		return (new ModelAndView("listHero", "heroList", heroes));
	}
}
