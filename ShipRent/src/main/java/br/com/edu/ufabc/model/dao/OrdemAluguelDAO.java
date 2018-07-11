package br.com.edu.ufabc.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.edu.ufabc.model.entity.OrdemAluguel;


@Repository
public interface OrdemAluguelDAO extends JpaRepository<OrdemAluguel, Long>{

}
