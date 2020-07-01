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
						<h2>Gerenciamento de Debates - ADM</h2>
						<p>Nome do Usuario</p>
					</header>

					<!-- Text -->
<div class="Listagem">
<h3>Listagem</h3>
  <table>
		<caption></caption>
		<thead></thead>
		<tbody>
			<c:forEach items="${debate}" var="debate">
				<tr>
					<td><input type="checkbox" value="${debate.id}" name="ids" /></td>
					<td>${debate.id}</td>
					<td><a href="visualizar/${debate.id}">${debate.titulo}</a></td>
					<td>${debate.categoria}</td>
					<td><a href="/scripts/debates/excluir/${debate.id}">excluir</a></td>
					<td>editar</td>
			</c:forEach>
		</tbody>
		<tfoot></tfoot>
	</table>			
	</body>
</html>