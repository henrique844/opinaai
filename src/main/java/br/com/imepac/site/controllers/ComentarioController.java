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
@RequestMapping(value = "/scripts/debates/")
public class ComentarioController {

	@Autowired
	private IComentarioServico comentarioServico;

	@RequestMapping(method = RequestMethod.GET, value = "comentarios")
	public String homePageCadastrar() {
		return "Comentarioinprocess";
	}

	@RequestMapping(method = RequestMethod.POST, value = "comentarios/salvar")
	public ModelAndView salvar(@Valid Comentario comentario, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("Comentarioinprocess");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(comentario);
		} else {
			comentarioServico.save(comentario);
			modelAndView.setViewName("redirect:Comentarioinprocess");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "gerenciarc")
	public ModelAndView gerenciar() {
		List<Comentario> comentario = comentarioServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("Gcomentario");
		modelAndView.addObject("comentario", comentario);
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "comentarios/{id}")
	public ModelAndView listar() {
		List<Comentario> comentario = comentarioServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("comentarioinprocess");
		modelAndView.addObject("comentario", comentario);
		return modelAndView;
	}


	@RequestMapping(method = RequestMethod.GET, value = "comentarios/visualizar/{id}")
	public ModelAndView visualizar(@PathVariable long id) {
		Comentario comentario = comentarioServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("comentarioinprocess");
		modelAndView.addObject(comentario);
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "comentarios/excluir/{id}")
	public ModelAndView deletar(@PathVariable long id) {
		comentarioServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:gerenciar");
		modelAndView.addObject("message_success","O registro foi deletado com sucesso!");
		return modelAndView;
	}
	
}
