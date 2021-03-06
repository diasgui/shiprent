package br.com.edu.ufabc.model.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name="barcos")
public class Barcos {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; //Long inicia o atributo com valor default null
	
	@Column(name="tipo", nullable=false)
	private String tipo; //Referente a lancha e barcos,rio e mar 
	
	@Column(name="capacidade", nullable=false)
	private Long capacidade;
	
	@Column(name="nome", nullable=false)
	private String nome;
	
	@Column(name="fechada", nullable=false)
	private Boolean fechada;
	// 0 eh aberta
	// 1 eh fechada
	// De padrao sera aberta
	
	//1 barco se refere a 1 barqueiro, porem cada barqueiro pode ter n barcos
	@ManyToOne
	@JoinColumn(name="barqueiros_id")	
	private Barqueiros barqueiros;
	
	public Barqueiros getBarqueiros() {
		return barqueiros;
	}
	public void setBarqueiros(Barqueiros barqueiros) {
		this.barqueiros = barqueiros;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Long getCapacidade() {
		return capacidade;
	}
	public void setCapacidade(Long capacidade) {
		this.capacidade = capacidade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Boolean getFechada() {
		return fechada;
	}
	
	public void setFechada(Boolean fechada) {
		this.fechada = fechada;
	}
	
}
