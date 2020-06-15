package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Comentario;

public interface IComentarioServico {
	public void save(Comentario comentario);
	public List<Comentario> reads();
	public Comentario read(long id);
	public void delete(long id);
	public void update(Comentario comentario);
}
