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
						<h2>Gerenciamento de Usuarios - ADM</h2>
						<p>ADM - Nome do Administrador</p>
					</header>

					<!-- Text -->
<div class="Listagem">
<form action="/scripts/usuarios/salvar" method="post">
<h3>Adicionar / Editar</h3>
<p>Nome</p>
  <input type="text" id="usuarionome" name="nome" value=""><br>
<p>Email</p>
  <input type="text" id="usuarioemail" name="email" value=""><br>
<p>Data de nascimento</p>
  <input id="date" type="date" style="margin-bottom: 2em">
<p>Senha</p>
  <input type="password" id="usuariopassword" name="senha" value=""><br>
<p>Tipo de Usuario</p>
  <input type="radio" id="usuario" name="tipo" value="0">
  <label for="usuario">Usuário</label><br>
  <input type="radio" id="superuser" name="tipo" value="1">
  <label for="superuser">Administrador</label><br>
	<input type="submit" value="Salvar Dados">
	</form>
<h3>Listagem</h3>
	
  <table>
		<caption></caption>
		<thead></thead>
		<tbody>
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td><input type="checkbox" value="${usuario.id}" name="ids" /></td>
					<td>${usuario.id}</td>
					<td>${usuario.nome}</td>
					<td><a href="/scripts/usuarios/excluir/${usuario.id}">excluir</a></td>
					<td>editar</td>
			</c:forEach>
		</tbody>
		<tfoot></tfoot>
	</table>			
</form>
	</body>
</html>