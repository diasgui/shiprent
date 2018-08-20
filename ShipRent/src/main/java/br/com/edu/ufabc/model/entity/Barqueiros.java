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
@Table(name="barqueiros")
public class Barqueiros {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; //Long inicia o atributo com valor default null
	
	@Column(name="nome", nullable=false)
	private String nome;
	
	@Column(name="telefone", nullable=false)
	private String telefone;
	
	@Column(name="celular", nullable=false)
	private String celular;
	
	@Column(name="email", nullable=false)
	private String email;
	
	@Column(name="cpf", nullable=false)
	private String cpf;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getCpf() {
		return cpf;
	}
		
	
	
	
}
