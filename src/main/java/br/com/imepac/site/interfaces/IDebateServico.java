package br.com.imepac.site.interfaces;

import java.util.List;

import br.com.imepac.site.entities.Debate;

public interface IDebateServico {
	public void save(Debate debate);
	public List<Debate> reads();
	public Debate read(long id);
	public void delete(long id);
	public void update(Debate debate);
}
