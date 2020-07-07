<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Opina Ai</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src=".../css/ie/html5shiv.js"></script><![endif]-->
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
						<h2>Cadastro</h2>
						<p>Com seu cadatro voce podera criar e debater sobre qualquer assunto ou debate existente.</p>
					</header>

					<!-- Text -->
<div class="login">
<form action="/usuarios/salvar" method="post" >
<h3>Seus Dados</h3>
<p>Nome</p>
  <input type="text" id="usuarionome" name="nome" value=""><br>
<p>Email</p>
  <input type="text" id="usuarioemail" name="email" value=""><br>
  <div class="mensagemerror"><p>${email_error}</p></div>
<p>Data de nascimento</p>
  <input id="date" name="data" type="date" style="margin-bottom: 2em">
<p>Senha</p>
  <input type="password" id="usuariopassword" name="senha" value=""><br>
  
	<input type="submit" value="Salvar Dados">
	</form>
	</body>
</html>