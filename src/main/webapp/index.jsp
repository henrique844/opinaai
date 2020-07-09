<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<title>Opina Ai</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
	
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="landing">

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

		<!-- Banner -->
			<section id="banner">
				<h2>Somos Todos Opina Ai</h2>
				<p>Sua opinião nosso ouro.</p>
				<ul class="actions">
					<li>
						<a href="#" class="button big">Leia Mais</a>
					</li>
				</ul>
			</section>

		<!-- One -->
			<section id="one" class="wrapper style1 align-center">
				<div class="container">
					<header>
						<h2>O que é?</h2>
						<p>O projeto Opina Ai tem como foco escutar o que voce tem a dizer sobre determinado evento.</p>
					</header>
					<div class="row 200%">
						<section class="4u 12u$(small)">
							<i class="icon big rounded fa-clock-o"></i>
							<p>Que tal doar um pouco do seu tempo deixando-nos conhecer sua opiniao sobre determinado assunto?</p>
						</section>
						<section class="4u 12u$(small)">
							<i class="icon big rounded fa-comments"></i>
							<p>Sinta-se a vontade para comentar outras opini�es e para dar a sua pr�pria, este � o local ideal.</p>
						</section>
						<section class="4u$ 12u$(small)">
							<i class="icon big rounded fa-user"></i>
							<p>Tem alguma dúvida? Diga e um de nossos atendentes irá ajuda-lo.</p>
						</section>
					</div>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper style2 align-center">
				<div class="container">
					<header>
						<h2>Opine em qualquer debate disponivel</h2>
						<p>Além de entrar em um debate voçê tambem podera criar o seu!!</p>
					</header>
					<div class="row">
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic001.jpg" alt="" />
							<h3 class="title"><a href="/debates/visualizar/2">Covid-19 na sua Cidade?</a></h3>
							<p>Sua Cidade ja foi afetada ? Como o Covid-19 afetou sua vida ? acha que o governo ta agindo de forma correta ?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic002.jpg" alt="" />
							<h3 class="title"><a href="/debates/visualizar/1">Estudos pela internet</a></h3>
							<p>Descreva sua opiniao sobre os estudos online e como sua institui��o tem lidado com esse problema. Esse problema pode afetar os futuros profissonais?</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic003.jpg" alt="" />
							<h3 class="title"><a href="/debates/visualizar/3">As fraudes diante da dificuldade</a></h3>
							<p>O governo liberar ajuda Emergencial foi uma grande entrada para diversos aproveitadores criar diversas formas de enganar a popula��o para captar dados bancarios. Como lidar com isso ? O que deve ser feito para Acabar com esse problema?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic004.jpg" alt="" />
							<h3 class="title"><a href="/debates/visualizar/4">Solução ou problema ?</a></h3>
							<p>A paralisacao brasileira foi realmente necessaria ? deveria ser maior ou menor ? poderia ser antes ou depois ?</p>
						</section>
					</div>
					<footer>
						<ul class="actions">
							<li>
								<a href="/debates/listar" class="button alt big">Mais Debates</a>
							</li>
						</ul>
					</footer>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<div class="row">
						<section class="4u 6u(medium) 12u$(small)">
							<h3>Visite tambem nossos Parceiros</h3>
							<p>Projetos e Equipes do ADS Imepac</p>
							<ul class="alt">
								<li><a href="#">Financeiro</a></li>
								<li><a href="#">Eventos</a></li>
								<li><a href="#">Sorteios</a></li>
								<li><a href="#">Opina Ai</a></li>
							</ul>
						</section>
						<section class="4u 6u$(medium) 12u$(small)">
							<h3>Ja vai ??</h3>
							<p>Que tal Conversar-mos mais um pouco ? garanto que tenho um assunto ideal para voc�!!</p>
							<ul class="alt">
								<li><a href="/debates/listar">Pandemia, Sera o fim do mundo ?</a></li>
								<li><a href="/debates/listar">O que podemos esperar do futuro ?</a></li>
								<li><a href="/debates/listar">Como funciona a mente feminina ?</a></li>
								<li><a href="CriarDebates.html">Crie seu proprio debate aqui!!!</a></li>
							</ul>
						</section>
						<section class="4u$ 12u$(medium) 12u$(small)">
							<h3>Contato</h3>
							<ul class="icons">
								<li><a href="#" class="icon rounded fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon rounded fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon rounded fa-google-plus"><span class="label">Google+</span></a></li>
							</ul>
							<ul class="tabular">
								<li>
									<h3>Endereço</h3>
									Av. Minas Gerais, 1889<br>
									Centro, Araguari - MG
								</li>
								<li>
									<h3>Email</h3>
									<a href="#">Exemplo@hotmail.com</a>
								</li>
								<li>
									<h3>Telefone</h3>
									(000) 000-0000
								</li>
							</ul>
						</section>
					</div>
					<ul class="copyright">
						<li>Opina Ai: O Direito de Opinar é seu!</li>
						<li>Desenvolvimento: ADS Imepac</li>
						<li>Instituição: <a href="https://imepac.edu.br/">IMEPAC Centro Universitário</a></li>
					</ul>
				</div>
			</footer>

	</body>
</html>
