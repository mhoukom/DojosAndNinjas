package com.houkom.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.houkom.dojosandninjas.models.Dojo;
import com.houkom.dojosandninjas.models.Ninja;
import com.houkom.dojosandninjas.services.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);		
		return "index.jsp";
	}
	
	@GetMapping("/dojos/add")
	public String addDojo(@ModelAttribute("dojo")Dojo dojo) {
		return "addDojo.jsp";
	}
	
	@PostMapping("/dojos/add")
	public String processAddDojo(@Valid @ModelAttribute("dojo")Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "addDojo.jsp";
		}else {
			mainService.saveDojo(dojo);
			return "redirect:/";
		}
	}
	
	@GetMapping("/ninjas/add")
	public String addNinja(@ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Dojo>dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "addNinja.jsp";
	}
	
	@PostMapping("/ninjas/add")
	public String processAddNinja(@Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Dojo>dojos = mainService.allDojos();
			model.addAttribute("dojos", dojos);
			return "addNinja.jsp";
		}else {
			mainService.saveNinja(ninja);
			return "redirect:/";
		}
	}
	
	@GetMapping("/dojos/{dojoId}")
	public String showOneDojo(@PathVariable("dojoId") Long dojoId, Model model) {
		Dojo dojo = mainService.findOneDojo(dojoId);
		model.addAttribute("dojo", dojo);
		return "showDojo.jsp";
	}
}
