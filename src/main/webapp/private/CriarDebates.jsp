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
						<h2>Criar seu Debate</h2>
						<p>Para Criar seu debate voce precisara preencher alguns dados.</p>
					</header>

					<!-- Text -->
<div class="criando">
<form action="/debates/private/salvar" method="post" enctype="multipart/form-data">
<h3>Titulo</h3>
  <input type="text" id="nomedebate" name="titulo" value=""><br>
  <h3>Descrição</h3>
  <input type="text" id="descricao" name="texto" value=""><br><br>
  <h3>Imagem</h3>
  <input type="file" name="file" class="btn btn-success"  accept="image/png, image/jpeg"  multiple /> 
<h3>Categoria</h3>
  <input type="text" id="categoria" name="categoria" value=""><br><br>
  <h3>Status</h3>
  <input type="radio" id="disponivel" name="visivel" value="1">
  <label for="disponivel">Disponível</label><br>
  <input type="radio" id="indisponivel" name="visivel" value="0">
  <label for="indisponivel">Indisponível</label><br>
  <h3>Tipo</h3>
  <input type="radio" id="Publico" name="tipo" value="1">
  <label for="Publico">Publico</label><br>
  <input type="radio" id="Privado" name="tipo" value="2">
  <label for="Privado">Privado</label><br>						
<input type="submit" value="Criar Debate">			
</form>
	</body>
</html>