<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
	Interphase by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
						<h2>Bem Vindo aos Debates</h2>
						<p>Aqui e o local onde voçê poderá expor sua opinião</p>
					</header>
                                        <h3>Escolha primeiramente seu assunto preferido.</h3>
					<div class="row">
						<c:forEach items="${debate}" var="debate">
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="/images/pic00${debate.id}.jpg" alt="" width="583" height="202" />
                            <h3 class="title" ><a href="/debates/visualizar/${debate.id}">${debate.titulo}</a></h3>
							<p>${debate.texto}</p>
						</section>
						</c:forEach>
						
						
						
						<!---	</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic03.jpg" alt="" />
							<h3 class="title"><a href="#">As fraudes diante da dificuldade</a></h3>
							<p>O governo liberar ajuda Emergencial foi uma grande entrada para diversos aproveitadores criar diversas formas de enganar a população para captar dados bancarios. Como lidar com isso ? O que deve ser feito para Acabar com esse problema?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic04.jpg" alt="" />
							<h3 class="title"><a href="#">Solução ou problema ?</a></h3>
							<p>A paralisacao brasileira foi realmente necessaria ? deveria ser maior ou menor ? poderia ser antes ou depois ?</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic001.png" alt="" />
							<h3 class="title"><a href="#">Ano de eleição</a></h3>
							<p>já escolheu seu candidato a vereador e prefeito ?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic002.jpg" alt="" />
							<h3 class="title"><a href="#">provas on-line</a></h3>
							<p>você concorda com essa opção?</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic003.jpg" alt="" />
							<h3 class="title"><a href="#">festa</a></h3>
							<p>qual show você gostaria de ir após a pandemia ?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic004.jpg" alt="" />
							<h3 class="title"><a href="#">Cerveja</a></h3>
							<p>qual é a melhor cerveja na sua opinião?</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic005.jpg" alt="" />
							<h3 class="title"><a href="#">Musica</a></h3>
							<p>qual show você gostaria de ir após a pandemia ?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic006.jpg" alt="" />
							<h3 class="title"><a href="#">Tempo</a></h3>
							<p>qual é a melhor cerveja na sua opinião?</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic007.jpg" alt="" />
							<h3 class="title"><a href="#">Time</a></h3>
							<p>qual show você gostaria de ir após a pandemia ?</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic008.jpg" alt="" />
							<h3 class="title"><a href="#">Copa do Mundo</a></h3>
							<p>Como sera a copa do mundo? Vai acontecer? Covid-19 impedira o acontecimento desse evento mundial ?</p>
						</section>   --->
					</div>

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
							<p>Que tal Conversar-mos mais um pouco ? garanto que tenho um assunto ideal para você!!</p>
							<ul class="alt">
								<li><a href="#">Pandemia, Sera o fim do mundo ?</a></li>
								<li><a href="#">O que podemos esperar do futuro ?</a></li>
								<li><a href="#">Como funciona a mente feminina ?</a></li>
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