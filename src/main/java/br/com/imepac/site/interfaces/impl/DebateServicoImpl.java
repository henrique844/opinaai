package br.com.imepac.site.interfaces.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.com.imepac.site.entities.Debate;
import br.com.imepac.site.entities.repositories.IDebateRepository;
import br.com.imepac.site.interfaces.IDebateServico;


@Service
public class DebateServicoImpl implements IDebateServico {

	@Autowired
	private IDebateRepository debateRepository;

	public void save(Debate debate) {
		debateRepository.save(debate);
	}

	public List<Debate> reads() {
		return debateRepository.findAll();
	}

	public Debate read(long id) {
		return debateRepository.findById(id).get();
	}

	public void delete(long id) {
		debateRepository.deleteById(id);
	}

	public void update(Debate debate) {
		debateRepository.save(debate);
	}
}
