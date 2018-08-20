package br.com.edu.ufabc.model.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import br.com.edu.ufabc.model.entity.Clientes;

@Repository
public interface ClientesDAO extends JpaRepository <Clientes,Long>{
	
	@Query("select c from Clientes c where c.cpf = :cpf")
	Clientes findByCpf(@Param("cpf") String cpf);
}
