package br.com.edu.ufabc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.com.edu.ufabc.model.dao.ClientesDAO;
import br.com.edu.ufabc.model.dao.SaidaBarcoDAO;
import br.com.edu.ufabc.model.dao.SaidaClienteDAO;
import br.com.edu.ufabc.model.entity.Clientes;
import br.com.edu.ufabc.model.entity.SaidaBarco;
import br.com.edu.ufabc.model.entity.SaidaCliente;

@Controller
public class SaidaClienteController {
	
	@Autowired
	SaidaClienteDAO saidacliDAO;
	
	@Autowired
	SaidaBarcoDAO saidabDAO;
	
	@Autowired
	ClientesDAO cDAO;
	
	@RequestMapping(value="/inicial_clientes/minhassaidas")
	public ModelAndView minhassaidas(@RequestParam String cpf) {
		ModelAndView mv = new ModelAndView("minhassaidas");
		
		Clientes cli = cDAO.findByCpf(cpf);	
		
		List<SaidaCliente> listsaidas = saidacliDAO.findAll();;
		List<SaidaCliente> minhassaidas = new ArrayList<>();
		
		for(int i=0; i < listsaidas.size(); i++) {
			if(listsaidas.get(i).getCliente().getCpf() == cli.getCpf())
				minhassaidas.add(listsaidas.get(i));
		}
		mv.addObject("saidascli", minhassaidas);
		
		return mv;
	}
	
	@RequestMapping(value= {"/inicial_clientes/novasaida"})
	public RedirectView novasaida(@RequestParam Long id, @RequestParam String cpf, @RequestParam Long qtd) {
		
		SaidaBarco saidabarco = saidabDAO.getOne(id);
		Clientes cli = cDAO.findByCpf(cpf);
		
		System.out.println(cli.getNome());
		
		SaidaCliente saidacli = new SaidaCliente();
		
		if(qtd <= saidabarco.getVagas()) {
			saidacli.setCliente(cli);
			saidacli.setSaidabarco(saidabarco);
			saidacliDAO.save(saidacli);
			saidabarco.setVagas(saidabarco.getVagas()-qtd);
			saidabDAO.save(saidabarco);
			return new RedirectView("/");
		}
		else
			return new RedirectView("/erroCapacidade");
	}
	
	@RequestMapping(value= {"/erroCapacidade"})
	public ModelAndView erro() {
		return new ModelAndView("erro");
	}
}
