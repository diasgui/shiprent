package br.com.edu.ufabc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.com.edu.ufabc.model.dao.ClientesDAO;
import br.com.edu.ufabc.model.entity.Clientes;



@Controller
public class ClientesController {

	@Autowired
	ClientesDAO cDAO;
	
	@RequestMapping(value= {"/clientes"})	
	public ModelAndView cliente() {
		ModelAndView mv = new ModelAndView("cliente");
		return mv;
	}
	
	@RequestMapping(value= {"/inicial_clientes"})
	public ModelAndView inicio() {
		return new ModelAndView("inicial_clientes");
	}
	
	@RequestMapping(value="/cliente/save", method=RequestMethod.POST)
	public RedirectView save(@RequestParam String nome, @RequestParam String telefone, 
			@RequestParam String celular,@RequestParam String email, @RequestParam String rg, 
			@RequestParam String cpf,@RequestParam String senha) {
		System.out.println("controllerCliente");
		
		Clientes c = new Clientes();
		
		c.setNome(nome);
		c.setTelefone(telefone);
		c.setCelular(celular);
		c.setEmail(email);
		c.setRg(rg);
		c.setCpf(cpf);
		c.setSenha(senha);
		
		cDAO.save(c);
		return new RedirectView("/");
	}
}
