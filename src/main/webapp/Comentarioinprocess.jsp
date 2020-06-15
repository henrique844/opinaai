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
	padding: 20px;
	margin: 10%; 
	color: white;
	background: #ababab;
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
					<ul>
						<li><a href="/index.html">Inicio</a></li>
						<li><a href="/scripts/debates/listar">Debates</a></li>
						<li><a href="/scripts/debates/criardebates">Criar Debates</a></li>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">
					<header class="major">
						<h2>Comentarios</h2>
					</header>
				</div>
			</section>
			<c:forEach items="${comentarios}" var="comentarios">
			<div class="comentario">
			${comentarios.usuario_id} diz:
			${comentarios.texto}
 			</div>
			</c:forEach>
	</body>
</html>