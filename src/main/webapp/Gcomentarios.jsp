<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<h2>Gerenciamento de Comentarios - ADM</h2>
						<p>Nome do Usuario</p>
					</header>

					<!-- Text -->
<div class="Comentarios">
<h3>Listagem de Comentarios</h3>
  <table>
		<caption></caption>
		<thead></thead>
		<tbody>
			<c:forEach items="${comentarios}" var="comentarios">
				<tr>
					<td><input type="checkbox" value="${comentarios.id}" name="ids" /></td>
					<td>${comentarios.id}</td>
					<td><a href="visualizar/${comentarios.id}">${comentarios.titulo}</a></td>
					<td>${debate.categoria}</td>
					<td><a href="/scripts/debates/comentarios/excluir/${comentarios.id}">excluir</a></td>
					<td>editar</td>
			</c:forEach>
		</tbody>
		<tfoot></tfoot>
	</table>			
	</body>
</html>