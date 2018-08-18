package br.com.edu.ufabc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.edu.ufabc.model.dao.SaidaBarcoDAO;
import br.com.edu.ufabc.model.entity.SaidaBarco;

@Controller
public class SaidaBarcoController {
	
	@Autowired
	SaidaBarcoDAO saidaDao;
	
	@RequestMapping(value= {"/inicial_clientes/novasaida"})
	public ModelAndView novasaida() {
		return new ModelAndView("novasaida");
	}
	
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
	public ModelAndView novasaidabarco(@RequestParam String local, @RequestParam String data, @RequestParam String hora,
			@RequestParam String vagas, @RequestParam String tipo, @RequestParam String duracao,
			@RequestParam String preco, @RequestParam String fechada) {
		
		SaidaBarco saida = new SaidaBarco();
		
		saida.setLocal(local);
		saida.setData(data);
		saida.setHora(hora);
		saida.setVagas(vagas);
		saida.setTipo(tipo);
		saida.setDuracao(duracao);
		saida.setPreco(preco);
		
		saidaDao.save(saida);
		
		return new ModelAndView("inicial_barqueiros");
	}
}
