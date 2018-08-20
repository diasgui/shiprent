package br.com.edu.ufabc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.com.edu.ufabc.model.dao.BarcosDAO;
import br.com.edu.ufabc.model.dao.BarqueirosDAO;
import br.com.edu.ufabc.model.dao.ClientesDAO;
import br.com.edu.ufabc.model.dao.SaidaBarcoDAO;
import br.com.edu.ufabc.model.entity.Barcos;
import br.com.edu.ufabc.model.entity.Clientes;
import br.com.edu.ufabc.model.entity.SaidaBarco;

@Controller
public class SaidaBarcoController {
	
	@Autowired
	SaidaBarcoDAO saidaDao;
	
	@Autowired
	BarcosDAO bDAO;
	
	@RequestMapping(value= {"/inicial_clientes/listasaidas"})
	public ModelAndView listarsaidas() {
		ModelAndView mv = new ModelAndView("listasaidas");
		mv.addObject("saidas", saidaDao.findAll());
		return mv;
	}
	
	@RequestMapping(value= {"/inicial_barqueiros/novasaida"})
	public ModelAndView criarnovasaida() {
		return new ModelAndView("/novasaida");
	}
	
	@RequestMapping(value= {"/inicial_barqueiros/save"})
	public RedirectView novasaidabarco(@RequestParam String local, @RequestParam String data, @RequestParam String hora,
			@RequestParam Long vagas, @RequestParam String tipo, @RequestParam String duracao,
			@RequestParam String preco, @RequestParam String fechada, @RequestParam Long barcoid) {
		
		SaidaBarco saida = new SaidaBarco();
		Barcos barco = bDAO.getOne(barcoid);
		
		saida.setLocal(local);
		saida.setData(data);
		saida.setHora(hora);
		saida.setVagas(vagas);
		saida.setTipo(tipo);
		saida.setDuracao(duracao);
		saida.setPreco(preco);
		saida.setBarco(barco);
		
		saidaDao.save(saida);
		
		return new RedirectView("/");
	}
}
