package com.pkm.hero.gui.controller;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pkm.hero.dto.Hero;
import com.pkm.hero.service.rest.client.HeroRestClient;
import com.pkm.hero.service.rest.exception.HeroRestClientException;

@Controller
@RequestMapping("/gui")
public class HeroGuiController {

	private Logger logger;

	public HeroGuiController() {
		logger = Logger.getLogger(this.getClass());
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String methodNameDoesNotMatter(ModelMap model) {

		logger.info("Entering method for HTTP-GET herogui");
		
		Hero myHero = null;

		HeroRestClient client = new HeroRestClient();

		try {
			List<Hero> heroes = client.getHeroes();

			// Get the last hero in the list
			Iterator<Hero> heroIter = heroes.iterator();

			while (heroIter.hasNext()) {
				myHero = heroIter.next();
			}
		} catch (HeroRestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//  Populate the Model with information from the back-end service
		model.addAttribute("heroName", myHero.getHeroName());
		model.addAttribute("secretIdentity", myHero.getSecretIdentity());

		// Value being returned is the name of the .jsp-page to redirect to
		// when trying to go to http://localhost:8080/herogui/herogui
		return "herogui";
	}

}