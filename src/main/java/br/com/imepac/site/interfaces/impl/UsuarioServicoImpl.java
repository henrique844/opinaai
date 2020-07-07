package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.com.imepac.site.entities.Comentario;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.entities.repositories.IComentarioRepository;
import br.com.imepac.site.entities.repositories.IUsuarioRepository;
import br.com.imepac.site.interfaces.IComentarioServico;
import br.com.imepac.site.interfaces.IUsuarioServico;
import br.com.imepac.site.login.LoginForm;

@Service
public class UsuarioServicoImpl implements IUsuarioServico {

	@Autowired
	private IUsuarioRepository usuarioRepository;

	public void save(Usuario usuario) {
		usuarioRepository.save(usuario);
	}

	public List<Usuario> reads() {
		return usuarioRepository.findAll();
	}

	public Usuario read(long id) {
		return usuarioRepository.findById(id).get();
	}

	public void delete(long id) {
		usuarioRepository.deleteById(id);
	}

	public void update(Usuario usuario) {
		usuarioRepository.save(usuario);
	}
	@Override
	public boolean autenticacao(LoginForm loginForm) {
		
		return usuarioRepository.findByEmailAndSenha(loginForm.getEmail(), loginForm.getSenha()) != null; 
	}
	public boolean busca(String string) {
		return usuarioRepository.findByEmail(string) !=null;
	}

}
