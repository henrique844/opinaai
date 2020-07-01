package br.com.imepac.site.login;

import javax.validation.constraints.NotBlank;

public class LoginForm {
		@NotBlank(message = "Campo obrigatorio!")
		private String email;
		@NotBlank(message = "Campo obrigatorio!")
		private String senha;
		private String tipo;
		private String nome;
		
		
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getTipo() {
			return tipo;
		}
		public void setTipo(String tipo) {
			this.tipo = tipo;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getSenha() {
			return senha;
		}
		public void setSenha(String senha) {
			this.senha = senha;
		}
		
		
		
}
