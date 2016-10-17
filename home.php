<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Letícia e Breno</title>
		<link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
		<link rel="stylesheet" type="text/css" href="_css/confirmacao.css"/>
		<link rel="stylesheet" type="text/css" href="_css/festa.css"/>
		<link rel="stylesheet" type="text/css" href="_css/mural.css"/>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
		<script src="_javascript/funcoes.js"></script>
	</head>
	<body>
		<div id="cabecalho">
			<h1>Letícia e Breno</h1>
			<h2>17 de Junho de 2017</h2>
		</div>
		
		<nav id="menu" class="posicao-menu">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Confirmação de Presença</a></li>
				<li><a href="#">Lista de Presentes</a></li>
				<li><a href="#">Festa</a></li>
				<li><a href="#">Álbum</a></li>
				<li><a href="#">...</a></li>
			</ul>
		</nav>
		
		<div id="teste">
		<div id="texto-principal">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lectus sit amet augue condimentum, at dignissim tortor porta. Fusce et libero fringilla, faucibus elit sed, tempor ex. Morbi bibendum eleifend libero ac dictum. Aenean ornare varius accumsan. Nam vitae sapien elementum, faucibus augue sed, efficitur neque. Proin aliquam lectus in sem euismod tincidunt. Fusce egestas sodales purus, quis tincidunt dolor sodales in. Quisque id cursus lacus. Nulla at feugiat magna.</p>

			<p>Nunc accumsan nisl vehicula, gravida diam eu, iaculis leo. Mauris eu dictum dolor, in ultrices elit. Sed ipsum ligula, elementum a fringilla eget, volutpat eget nisl. Morbi finibus, lacus non dapibus convallis, leo ante dictum libero, ullamcorper pulvinar elit dolor hendrerit enim. Ut vulputate dapibus urna eget suscipit. Donec nec nunc augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu velit leo. Nunc eu sagittis turpis. Curabitur id metus vestibulum, porttitor ligula at, malesuada diam. Quisque sed commodo erat. In id ipsum justo. Nunc quis risus in enim dignissim eleifend.</p>

			<p>Praesent eget risus dictum, hendrerit velit facilisis, pulvinar nisl. Vestibulum varius, felis ac faucibus dapibus, nunc velit pulvinar nunc, ac iaculis dui ante vel nulla. Praesent dapibus mauris vel ante congue dignissim. Sed interdum quam a urna vulputate gravida. Nullam eget quam consequat, ornare purus quis, aliquet metus. Fusce non libero non velit maximus viverra sit amet sit amet magna. Sed non ante gravida, consectetur quam faucibus, elementum odio. Vivamus mattis blandit urna, eu commodo arcu. Curabitur sed mattis tellus. Curabitur aliquet justo non efficitur elementum. Donec ut libero quis magna rutrum porta ac sed odio. Nunc vitae ullamcorper tortor, et vestibulum quam. Cras commodo mauris a dolor luctus, non imperdiet neque molestie. Praesent mattis posuere porta.</p>

			<p>Fusce et dignissim mi. In aliquam arcu a efficitur feugiat. Ut a molestie dui. Sed auctor, urna quis feugiat elementum, tortor lectus cursus mi, nec molestie nisl ante sit amet ligula. Suspendisse tempus euismod fringilla. Curabitur elit ipsum, laoreet quis tincidunt quis, iaculis in magna. Proin quis bibendum est. Sed euismod eros eget nulla hendrerit tristique. Integer efficitur felis sed odio varius, ut dictum mauris malesuada. Maecenas et auctor nulla. Nulla hendrerit lectus sapien, posuere elementum elit tempor id. Sed ultrices lectus eu sapien pharetra, nec dictum velit egestas. Nulla sit amet nibh enim.</p>

			<p>Ut felis elit, ullamcorper at dolor eget, cursus efficitur sapien. Etiam sit amet molestie felis. Ut nec finibus diam. Ut vel massa sapien. Aenean nec diam varius, suscipit nisl nec, congue lorem. In hac habitasse platea dictumst. Vestibulum nec luctus metus, sed tempus arcu. Nullam imperdiet facilisis dui in eleifend. Morbi non ligula ipsum. Praesent justo nibh, posuere nec rhoncus eu, tincidunt imperdiet felis. Nunc finibus urna in ipsum pellentesque, vel placerat metus luctus. Sed lacinia facilisis purus, non feugiat diam mattis quis. Aliquam erat volutpat. Nulla mauris eros, consectetur sed magna mollis, efficitur aliquet libero. Aenean vel ultricies mi, quis imperdiet augue. 
			</p>
			
		</div>
		
		<figure>
			<img src="_imagens/moldura.png"/>
			<figcaption>
				<h1>Confirmar Presença</h1>
			</figcaption>
		</figure>
		
			<form id="confirmacao">
				<fieldset id="bloco-confirmacao">
				<legend>Identificação do Usuário</legend>
				
				<input type="text" id="nomeConvidado" name="nomeConvidado" placeholder="Nome Completo do Convidado"/>
				<fieldset id="resposta">Você irá ao evento?
					<p><label name="tSimLabel" id="cSimLabel" for="cSim">Sim</label><input type="radio" name="tResposta" id="cSim" checked></p>
					<p><label name="tNaoLabel" id="cNaoLabel" for="cNao">Não</label><input type="radio" name="tResposta" id="cNao"/></p>
				</fieldset>
				<p><label name="tQntLabel" id="cQntLabel" for="cQnt">Quantos adultos?</label><input type="number" name="tQnt" id="cQnt" min="1" max="10" value="1"/></label></p></p>
				<input type="text" id="email" name="email" placeholder="E-mail"/>
				<input type="text" id="ddd" name="ddd" placeholder="DDD"/>
				<input type="text" id="telefone" name="telefone" placeholder="Telefone"/>
				</fieldset>
				<input id="enviar" type="submit" value="Enviar Dados"/>
			</form>
			
		<figure>
			<img src="_imagens/moldura.png"/>
			<figcaption>
				<h1>Localização da Festa</h1>
			</figcaption>
		</figure>
		
			<section id="corpo">
				<iframe id="localizacao" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3212.5829342839365!2d-42.65378917619719!3d-21.520783723979374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x62fdcfac18b144a0!2sSposato!5e0!3m2!1spt-BR!2sbr!4v1473878382738" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
			</section>
		
		<figure>
			<img src="_imagens/moldura.png"/>
			<figcaption>
				<h1>Mural de Mensagens</h1>
			</figcaption>
		</figure>
		
		<div id="mural-mensagens">
			<h1>Deixe sua mensagem de carinho para nós...</h1>
			<h2>Palavras são carinhos doados. Obrigado por nos dar o seu carinho. Iremos lembrar para sempre deste momento tão esperado.</h2>
			
			<form method="post" action="_php/mensagem.php">
				<input type="text" id="cNome" name="tNome" placeholder="Nome"/></br></br>
				<input type="text" id="cEmail" name="tEmail" placeholder="Email"/></br></br>
				<textarea cols="59" rows="10" id="cMensagem" name="tMensagem" placeholder="Mensagem"></textarea></br>
				<input type="submit" value="Enviar Mensagem"/>
			</form>
			
			<?php 
				////Faz a conexão com o banco
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("casamento", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `nome`, `mensagem` FROM `mensagens`"; 
				$result = mysql_query($sql, $conecta); 
				 
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "Nome: $consulta[nome] </br>Mensagem: $consulta[mensagem]<br>"; 
				} 
				////////////////////////////
			?>
		</div>
			
		</div>
		
	</body>
</html>