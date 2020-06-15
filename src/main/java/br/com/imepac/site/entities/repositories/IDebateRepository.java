package br.com.imepac.site.entities.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.imepac.site.entities.Debate;
@Repository
public interface IDebateRepository extends JpaRepository<Debate, Long>{

}
