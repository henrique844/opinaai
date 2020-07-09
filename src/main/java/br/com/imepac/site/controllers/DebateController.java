package br.com.imepac.site.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
	public ModelAndView salvar(@Valid Debate debate,@RequestParam MultipartFile file,HttpSession session, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("private/criardebates");
			modelAndView.addObject("message_error", "Foram encontrados erros!");
			modelAndView.addObject(debate);
		} else {
			
			LocalDateTime time = LocalDateTime.now();
			debate.setData(time);
		
			debateServico.save(debate);
			if(!(file.isEmpty())) {
			String nome = "pic00" + debate.getId();
			
			String path=session.getServletContext().getRealPath("images/");  
	       
	          
	        System.out.println(path+" "+nome);  
	        try{  
	        byte barr[]=file.getBytes();  
	          
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path+"/"+nome+".jpg"));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
	          
	        }catch(Exception e){System.out.println(e);}  }
			
	        
			modelAndView.setViewName("redirect:gerenciar");
			modelAndView.addObject("message_success", "Cadastro efetuado com sucesso!");

		}
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "private/gerenciar")
	public ModelAndView gerenciar() {
		List<Debate> debate = debateServico.reads();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("private/ADM/Gdebates");
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
		modelAndView.setViewName("redirect:gerenciar");
		modelAndView.addObject("message_success","O registro foi deletado com sucesso!");
		return modelAndView;
	}
	
}
