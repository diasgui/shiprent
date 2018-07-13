package br.com.edu.ufabc.model.entity;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	private String capacidade;
	@Column(name="nome", nullable=false)
	private String nome;
	@Column(name="fechada", nullable=false)
	private Boolean fechada;
	// 0 é aberta
	// 1 é fechada
	// De padrão será aberta
	
	//chave estrangeira, 1 barcos para n saidas
	@OneToMany(mappedBy="id")
	private Collection<SaidaBarco> saidas = new ArrayList<SaidaBarco>();
	
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
	public String getCapacidade() {
		return capacidade;
	}
	public void setCapacidade(String capacidade) {
		this.capacidade = capacidade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Collection<SaidaBarco> getSaidas() {
		return saidas;
	}

	public void setSaidas(Collection<SaidaBarco> saidas) {
		this.saidas = saidas;
	}
	
	public Boolean getFechada() {
		return fechada;
	}
	
	public void setFechada(Boolean fechada) {
		this.fechada = fechada;
	}
	
	

	
	
	
}
