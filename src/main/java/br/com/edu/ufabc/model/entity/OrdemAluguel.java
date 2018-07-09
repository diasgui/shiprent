package br.com.edu.ufabc.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name="ordemaluguel")
public class OrdemAluguel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; //Long inicia o atributo com valor default null
	@Column(name="alugandovagas", nullable=false)
	private String alugandovagas; //Quantidade de vagas que estao sendo alugadas
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAlugandovagas() {
		return alugandovagas;
	}
	public void setAlugandovagas(String alugandovagas) {
		this.alugandovagas = alugandovagas;
	}
	
	
	
}
