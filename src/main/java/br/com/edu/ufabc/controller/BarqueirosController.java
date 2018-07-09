package br.com.edu.ufabc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import br.com.edu.ufabc.model.dao.BarqueirosDAO;
import br.com.edu.ufabc.model.entity.Barqueiros;

@Controller
public class BarqueirosController {
	
	@Autowired
	BarqueirosDAO bDAO;
	

	@RequestMapping(value= {"/barqueiros"})	
	public ModelAndView barqueiros() {
		ModelAndView mv = new ModelAndView("barqueiros");
		return mv;
	}
	
	@RequestMapping(value="/barqueiros/save", method=RequestMethod.POST)
	public RedirectView save(@RequestParam String nome, @RequestParam String telefone, 
			@RequestParam String celular,@RequestParam String email) {
		System.out.println("controllerBarqueiros");
		
		Barqueiros b = new Barqueiros();
		
		b.setNome(nome);
		b.setTelefone(telefone);
		b.setCelular(celular);
		b.setEmail(email);
		
		bDAO.save(b);
		return new RedirectView("/");
	}
	
}
