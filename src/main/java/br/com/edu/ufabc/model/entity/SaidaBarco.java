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
@Table(name="saidabarco")
public class SaidaBarco {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; //Long inicia o atributo com valor default null
	@Column(name="nome", nullable=false)
	private String nome;
	@Column(name="data", nullable=false)
	private String data; //Referente a saida do porto
	@Column(name="hora", nullable=false)
	private String hora; //referente a saida do porto
	@Column(name="vagas", nullable=false)
	private String vagas; //vagas nao preenchidas, comeca igual as vagas da tabela Barcos
	@Column(name="tipo", nullable=false)
	private String tipo; //Tipo referente a turismo e pesca
	@Column(name="duracao", nullable=false)
	private String duracao; //Duracao maxima do passeio
	@Column(name="preco", nullable=false)
	private String preco; //A ideia e o preco variar conforme as vagas nao preeenchidas
	
	
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
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getVagas() {
		return vagas;
	}
	public void setVagas(String vagas) {
		this.vagas = vagas;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDuracao() {
		return duracao;
	}
	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	
	

}
