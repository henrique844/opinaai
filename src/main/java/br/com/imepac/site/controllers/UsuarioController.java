package br.com.imepac.site.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import br.com.imepac.site.entities.Debate;
import br.com.imepac.site.entities.Usuario;
import br.com.imepac.site.entities.repositories.IUsuarioRepository;
import br.com.imepac.site.interfaces.IComentarioServico;
import br.com.imepac.site.interfaces.IUsuarioServico;
import br.com.imepac.site.login.LoginForm;

@Controller
@RequestMapping(value = "/usuarios")
@SessionAttributes("SessionKey")
public class UsuarioController {

	@Autowired
	private IUsuarioServico usuarioServico;

	@RequestMapping(method = RequestMethod.GET, value = "cadastrar")
	public String homePageCadastrar() {
		return "cadastro";
	}
	@RequestMapping(method = RequestMethod.GET, value = "login")
	public String homePagelogin() {
		return "Login";
	}

	@RequestMapping(method = RequestMethod.POST, value = "salvar")
	public ModelAndView salvar(@Valid Usuario usuario, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("cadastro");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(usuario);
		} else {
			
			if(usuarioServico.busca(usuario.getEmail())== true) {
				modelAndView.setViewName("cadastro");
				modelAndView.addObject("email_error", "Email ja cadastrado!");
			}
			else{ String x = "1";
			usuario.setTipo(x);
			usuarioServico.save(usuario);
			modelAndView.setViewName("redirect:login");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
			}
		}
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.POST, value = "private/update")
	public ModelAndView update(Usuario usuario, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("cadastro");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(usuario);
		} else {
			usuarioServico.update(usuario);
			modelAndView.setViewName("redirect:private/gerenciar");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");
		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "private/gerenciar")
	public ModelAndView gerenciar() {
		List<Usuario> usuarios = usuarioServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("private/ADM/Gusuarios");
		modelAndView.addObject("usuarios",usuarios);
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "Login")
	public ModelAndView login(@Valid LoginForm loginForm, BindingResult bindingResult, HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
			modelAndView.setViewName("Login");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(loginForm);
		}
		else {
			if(usuarioServico.autenticacao(loginForm) == true) {
				
				httpSession.setAttribute("SessionKey", true);
				httpSession.setAttribute("SessionEmail", loginForm.getEmail());
				
				
				modelAndView.setViewName("redirect:/Perfil.jsp");
				
				
			}
			else {
				modelAndView.addObject("message_error", "Dados de acesso incorretos!");
				modelAndView.setViewName("Login");
				
			}
			
		}
	
		return modelAndView;
	}	
	@RequestMapping(method = RequestMethod.GET, value = "private/visualizar/{id}")
	public ModelAndView visualizar(@PathVariable long id) {
		Usuario usuario = usuarioServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("private/ADM/Gusuariosv");
		modelAndView.addObject(usuario);
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "private/excluir/{id}")
	public ModelAndView deletar(@PathVariable long id) {
		usuarioServico.delete(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/usuarios/private/gerenciar");
		modelAndView.addObject("message_success","O registro foi deletado com sucesso!");
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		
		httpSession.removeAttribute("SessionKey");
		httpSession.invalidate();
		
		
		
			modelAndView.setViewName("/Login");
			modelAndView.addObject("message_error", "Logout Feito com sucesso!");
		return modelAndView;
	}
	@RequestMapping(method = RequestMethod.GET, value = "private/perfil")
	public ModelAndView perfil() {
		//Usuario usuario = usuarioServico.read(id);
		ModelAndView modelAndView = new ModelAndView();
		//modelAndView.setViewName("private/ADM/Gusuariosv");
		//modelAndView.addObject(usuario);
		return modelAndView;
	}
	
}
