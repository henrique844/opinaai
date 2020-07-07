package br.com.imepac.site.entities.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.imepac.site.entities.Usuario;

@Repository
public interface IUsuarioRepository extends JpaRepository<Usuario, Long>{
	
	public Usuario findByEmailAndSenha(String email, String senha);
	public Usuario findByNomeAndTipo(String nome, String tipo);
	public Usuario findByEmail(String email);
}
