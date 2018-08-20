package br.com.edu.ufabc.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="saidacliente")
public class SaidaCliente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="saidabarco_id")
	private SaidaBarco saidabarco;
	
	@ManyToOne
	@JoinColumn(name="cliente_id")
	private Clientes cliente;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public SaidaBarco getSaidabarco() {
		return saidabarco;
	}

	public void setSaidabarco(SaidaBarco saidabarco) {
		this.saidabarco = saidabarco;
	}

	public Clientes getCliente() {
		return cliente;
	}

	public void setCliente(Clientes cliente) {
		this.cliente = cliente;
	}
}
