package br.com.edu.ufabc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.edu.ufabc.model.dao.LoginDAO;
import br.com.edu.ufabc.model.entity.Usuario;

@Controller
public class LoginController {

	@Autowired
	LoginDAO lDAO;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public @ResponseBody String processAJAXRequest(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		String response;
		
		boolean achou = false;
		
		List<Usuario> listaUsuario = new ArrayList<Usuario>();
		
		listaUsuario = lDAO.findAll();
		
		for(Usuario usuario: listaUsuario) {
			
			if(usuario.getEmail().equals(email) && usuario.getSenha().equals(password)) 
				achou = true;
		}
		
		if(achou)
			response = "Login efetuado com sucesso!";
		else
			response = "E-mail não cadastrado!";

		return response;
	}
	
	
	@RequestMapping(value="/cadastro", method=RequestMethod.GET)
	public @ResponseBody String CadastraUsuario(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		Usuario usuario = new Usuario();
		
		usuario.setEmail(email);
		usuario.setSenha(password);
		
		lDAO.save(usuario);
		
		return "Usuario Cadastrado com Sucesso";
	}
}
