package br.com.imepac.site.entities;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "comentarios")
public class Comentario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar data;
	@DateTimeFormat(pattern="hh:mm")
	private Calendar hora;
	@ManyToOne
	@JoinColumn(name = "usuarios_id", referencedColumnName = "id")
	private Usuario usuario;
	
	private String texto;
	
	@ManyToOne
	@JoinColumn(name = "debates_id",referencedColumnName = "id")
	private Debate debate;
	

	
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Debate getDebate() {
		return debate;
	}

	public void setDebate(Debate debate) {
		this.debate = debate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public Calendar getHora() {
		return hora;
	}

	public void setHora(Calendar hora) {
		this.hora = hora;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}
	
	
	
	
	
}
