<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Opina Ai</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="/css/ie/html5shiv.js"></script><![endif]-->
		<script src="/js/jquery.min.js"></script>
		<script src="/js/skel.min.js"></script>
		<script src="/js/skel-layers.min.js"></script>
		<script src="/js/init.js"></script>
			<link rel="stylesheet" href="/css/skel.css" />
			<link rel="stylesheet" href="/css/style.css" />
			<link rel="stylesheet" href="/css/style-xlarge.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="/css/ie/v8.css" /><![endif]-->
	</head>
	<style>
	.mensagemerror{
	color: red;
	}
	</style>
	<body>

		<!-- Header -->
			<header id="header">
				<h1><a href="index.html">Opina Ai</a></h1>
				<nav id="nav">
					<ul class="submenn">
						<li><a href="/index.jsp">Inicio</a></li>
						<li><a href="/debates/listar">Debates</a></li>
						<li><a href="/debates/private/criardebates">Criar Debates</a></li>
		
						<li><a href="Login.html">Login</a>
							<ul class="subm">
								<li><a href="/Login.jsp">Login</a></li>
								<li><a href="/usuarios/logout">Logout</a></li></li>
								<li><a href="/usuarios/private/gerenciar">Usuarios</a></li></li>
							</ul>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">

					<header class="major">
						<h2>Faça Login para continuar</h2>
						<p>Se não tiver cadastro em nosso site basta criar um e rapido e gratuido.</p>
					</header>

					<!-- Text -->
<div class="login">
<form action="/usuarios/Login" method="post">
<h3>Login</h3>
  <input type="text" id="login" name="Email" value=""><br>
  <h3>senha</h3>
  <input type="password" id="passwordlogin" name="Senha" value=""><br><br>
  <div class="mensagemerror"><p>${message_error}</p></div>
	<p>Não tem uma conta?Crie uma agora, <a href="/cadastro.jsp" title="Cadastre-se Agora!">click aqui.</a></p>						
<input type="submit" value="Entrar">			
</form>
	</body>
</html>