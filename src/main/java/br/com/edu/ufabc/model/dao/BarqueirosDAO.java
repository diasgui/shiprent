package br.com.edu.ufabc.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.edu.ufabc.model.entity.Barqueiros;

@Repository
public interface BarqueirosDAO extends JpaRepository<Barqueiros,Long> {

}
