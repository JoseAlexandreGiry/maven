package com.gtm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/personnes")
public class PersonneController {
	@Autowired
	IGestionPersonne igp;

	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("personnes", igp.findAll());
		model.addAttribute("personne", new Personne());
		return "personnes";
	}

	@RequestMapping("/savePers")
	public String savePers(@Valid Personne p,BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("personnes", igp.findAll());
			return "personnes";
		}
		if (p.getId() == 0) {
			igp.ajouterPersonne(p);
		} else {
			igp.updatePersonne(p);
		}
		model.addAttribute("personnes", igp.findAll());
		model.addAttribute("personne", new Personne());
		return "personnes";
	}

	@RequestMapping("/supprPers")
	public String supprPers(Integer idPers, Model model) {
		igp.supprimerPersonne(idPers);
		model.addAttribute("personnes", igp.findAll());
		model.addAttribute("personne", new Personne());
		return "personnes";
	}

	@RequestMapping("/editPers")
	public String editPers(Integer idPers, Model model) {
		Personne p = igp.getPersonne(idPers);
		model.addAttribute("personne", p);
		model.addAttribute("personnes", igp.findAll());
		return "personnes";
	}
}
