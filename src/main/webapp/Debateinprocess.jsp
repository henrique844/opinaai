<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
	Interphase by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Generic - Interphase by TEMPLATED</title>
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
	.comentario {
	border: outset;
    border-color: black;
	padding: 20px;
	margin: 1%;
	margin-right: 5%;
    margin-left: 5%; 
	color: black;
	background: #cacaca;
    border-radius: 15px;
    width: auto;
    height: auto;
	}
	</style>
	<body>

		<!-- Header -->
			<header id="header">
				<h1><a href="index.html">Opina Ai</a></h1>
						<form class="Pesquisa">
						  <input type="text" placeholder="Pesquisar" name="Pesquisa">
                                                  <button type="submit"><i class="fa fa-search"></i></button>
					</form>
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
						<img src="/images/pic00${debate.id}.jpg" width="360" height="200" />
						<h2>${debate.titulo}</h2>
						<p>${debate.texto} 
						Autor: ${debate.usuario.nome}</p>
					</header>
				</div>
				
				<c:forEach items="${debate.comentarios }" var="comentario">
				<div class="comentario">
			${comentario.usuario.nome} diz:
			${comentario.texto}
 			</div>
				
				</c:forEach>
				
			<p>Voçê pode também pode comentar, bastar entrar em sua conta no app Opina Ai e opinar sobre o debate escolhido...</p>
			</section>			
	</body>
</html>