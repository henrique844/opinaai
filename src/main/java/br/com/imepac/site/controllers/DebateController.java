package br.com.imepac.site.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.entities.Comentario;
import br.com.imepac.site.entities.Debate;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.entities.repositories.IUsuarioRepository;
import br.com.imepac.site.interfaces.IComentarioServico;
import br.com.imepac.site.interfaces.IDebateServico;
import br.com.imepac.site.interfaces.IUsuarioServico;

@Controller
@RequestMapping(value = "/debates")
public class DebateController {

	@Autowired
	private IDebateServico debateServico;
	

	@RequestMapping(method = RequestMethod.GET, value = "private/criardebates")
	public String homePageCadastrar() {
		return "private/CriarDebates";
	}

	@RequestMapping(method = RequestMethod.POST, value = "private/salvar")
	public ModelAndView salvar(@Valid Debate debate, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("private/criardebates");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(debate);
		} else {
			debateServico.save(debate);
			modelAndView.setViewName("redirect:private/gerenciar");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "private/gerenciar")
	public ModelAndView gerenciar() {
		List<Debate> debate = debateServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("private/Gdebates");
		modelAndView.addObject("debate", debate);
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "listar")
	public ModelAndView listar() {
		List<Debate> debate = debateServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Debates");
		modelAndView.addObject("debate", debate);
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "visualizar/{id}")
	public ModelAndView visualizar(@PathVariable long id) {
		Debate debate = debateServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Debateinprocess");
		modelAndView.addObject(debate);
		
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "private/excluir/{id}")
	public ModelAndView deletar(@PathVariable long id) {
		debateServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:private/gerenciar");
		modelAndView.addObject("message_success","O registro foi deletado com sucesso!");
		return modelAndView;
	}
	
}
