package br.com.edu.ufabc.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.edu.ufabc.model.entity.SaidaBarco;


@Repository
public interface SaidaBarcoDAO extends JpaRepository<SaidaBarco, Long>{

}
