package br.com.edu.ufabc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import br.com.edu.ufabc.model.dao.BarcosDAO;
import br.com.edu.ufabc.model.entity.Barcos;

@Controller
public class BarcosController {

	@Autowired
	BarcosDAO bDAO;
	
	@RequestMapping(value= {"/barcos"})	
	public ModelAndView barcos() {
		ModelAndView mv = new ModelAndView("barcos");
		return mv;
	}
	
	@RequestMapping(value="/barcos/save", method=RequestMethod.POST)
	public RedirectView save(@RequestParam String tipo, @RequestParam String capacidade, 
			@RequestParam String nome) {
		System.out.println("controllerBarcos");
		
		Barcos b = new Barcos();
		b.setCapacidade(capacidade);
		b.setNome(nome);
		b.setTipo(tipo);
		
		bDAO.save(b);
		return new RedirectView("/");
	}
}
