package br.com.edu.ufabc.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.edu.ufabc.model.entity.Clientes;

@Repository
public interface ClientesDAO extends JpaRepository <Clientes,Long>{

}
