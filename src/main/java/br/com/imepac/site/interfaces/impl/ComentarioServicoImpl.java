package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.com.imepac.site.entities.Comentario;
import br.com.imepac.site.entities.repositories.IComentarioRepository;
import br.com.imepac.site.interfaces.IComentarioServico;

@Service
public class ComentarioServicoImpl implements IComentarioServico {

	@Autowired
	private IComentarioRepository comentarioRepository;

	public void save(Comentario comentario) {
		comentarioRepository.save(comentario);
	}

	public List<Comentario> reads() {
		return comentarioRepository.findAll();
	}

	public Comentario read(long id) {
		return comentarioRepository.findById(id).get();
	}

	public void delete(long id) {
		comentarioRepository.deleteById(id);
	}

	public void update(Comentario comentario) {
		comentarioRepository.save(comentario);
	}
}
