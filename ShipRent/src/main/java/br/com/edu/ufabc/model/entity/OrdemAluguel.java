package br.com.edu.ufabc.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	@Column(name="observacao")
	private String observacao; //Quantidade de vagas que estao sendo alugadas
	@Column(name="criarSaidaNova")
	private String criarSaidaNova; 
	
	//chave que refere cliente com ordem de saida, cada ordem de saida se refere a 1 cliente
	//, sendo que o cliente pode ter varias ordens de saida
	@ManyToOne
	@JoinColumn(name="cliente_id")	
	private Clientes cliente;
	
	public Clientes getCliente() {
		return cliente;
	}
	public void setCliente(Clientes cliente) {
		this.cliente = cliente;
	}
	
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
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	public String getCriarSaidaNova() {
		return criarSaidaNova;
	}
	public void setCriarSaidaNova(String criarSaidaNova) {
		this.criarSaidaNova = criarSaidaNova;
	}
	
	
	
	
}
