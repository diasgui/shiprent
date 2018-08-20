package br.com.edu.ufabc.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.edu.ufabc.model.entity.Clientes;
import br.com.edu.ufabc.model.entity.SaidaCliente;

@Repository
public interface SaidaClienteDAO extends JpaRepository<SaidaCliente, Long> {
	SaidaCliente findByCliente(Clientes cli);
}
