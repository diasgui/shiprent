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
@Table(name="clientes")
public class Clientes {

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
	@Column(name="senha", nullable=false)
	private String senha;
	@Column(name="rg", nullable=false)
	private String rg;
	@Column(name="cpf", nullable=false)
	private String cpf;
	
	//chave estrangeira, 1 cliente tem n alugueis
	@OneToMany(mappedBy="id")
	private Collection<OrdemAluguel> aluguel = new ArrayList<OrdemAluguel>();
			
	
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
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Collection<OrdemAluguel> getAluguel() {
		return aluguel;
	}

	public void setAluguel(Collection<OrdemAluguel> aluguel) {
		this.aluguel = aluguel;
	}
	
		
	
}
