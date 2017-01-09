<?php
/**
 * Sistema de contador de visitas
 *
 * Usado para fazer a contagem de visitas únicas e pageviews diários do site
 *
 * Método de utilização:
 *  Apenas inclua este arquivo no começo do seu site.
 */
 //  Configurações do Script
 // ==============================
 $_CV['registraAuto'] = true;       // Registra as visitas automaticamente?
 $_CV['conectaMySQL'] = true;       // Abre uma conexão com o servidor MySQL?
 $_CV['iniciaSessao'] = true;       // Inicia a sessão com um session_start()?
 $_CV['servidor'] = '127.0.0.1';    // Servidor MySQL
 $_CV['usuario'] = 'root';          // Usuário MySQL
 $_CV['senha'] = '';                // Senha MySQL
 $_CV['banco'] = 'casamento';       // Banco de dados MySQL
 $_CV['tabela'] = 'visitas';        // Nome da tabela onde os dados são salvos
 // ==============================
 // ======================================
 //   ~ Não edite a partir deste ponto ~
 // ======================================
 // Verifica se precisa fazer a conexão com o MySQL
 if ($_CV['conectaMySQL'] == true) {
    $_CV['link'] = mysql_connect($_CV['servidor'], $_CV['usuario'], $_CV['senha']) or die("MySQL: Não foi possível conectar-se ao servidor [".$_CV['servidor']."].");
    mysql_select_db($_CV['banco'], $_CV['link']) or die("MySQL: Não foi possível conectar-se ao banco de dados [".$_CV['banco']."].");
 }
 // Verifica se precisa iniciar a sessão
 if ($_CV['iniciaSessao'] == true) {
    session_start();
 }
/**
 * Registra uma visita e/ou pageview para o visitante
 */
 function registraVisita() {
    global $_CV;
    $sql = "SELECT COUNT(*) FROM `".$_CV['tabela']."` WHERE `data` = CURDATE()";
    $query = mysql_query($sql);
    $resultado = mysql_fetch_row($query);
    // Verifica se é uma visita (do visitante)
    $nova = (!isset($_SESSION['ContadorVisitas'])) ? true : false;
    // Verifica se já existe registro para o dia
    if ($resultado[0] == 0) {
        $sql = "INSERT INTO `".$_CV['tabela']."` VALUES (NULL, CURDATE(), 1, 1)";
    } else {
        if ($nova == true) {
            $sql = "UPDATE `".$_CV['tabela']."` SET `uniques` = (`uniques` + 1), `pageviews` = (`pageviews` + 1) WHERE `data` = CURDATE()";
        } else {
            $sql = "UPDATE `".$_CV['tabela']."` SET `pageviews` = (`pageviews` + 1) WHERE `data` = CURDATE()";
        }
    }
    // Registra a visita
    mysql_query($sql);
    // Cria uma variavel na sessão
    $_SESSION['ContadorVisitas'] = md5(time());
 }
/**
 * Função que retorna o total de visitas
 *
 * @param string $tipo - O tipo de visitas a se pegar: (uniques|pageviews)
 * @param string $periodo - O período das visitas: (hoje|mes|ano)
 *
 * @return int - Total de visitas do tipo no período
 */
 function pegaVisitas($tipo = 'uniques', $periodo = 'hoje') {
    global $_CV;
    switch($tipo) {
        default:
        case 'uniques':
            $campo = 'uniques';
            break;
        case 'pageviews':
            $campo = 'pageviews';
            break;
    }
    switch($periodo) {
        default:
        case 'hoje':
            $busca = "`data` = CURDATE()";
            break;
        case 'mes':
            $busca = "`data` BETWEEN DATE_FORMAT(CURDATE(), '%Y-%m-01') AND LAST_DAY(CURDATE())";
            break;
        case 'ano':
            $busca = "`data` BETWEEN DATE_FORMAT(CURDATE(), '%Y-01-01') AND DATE_FORMAT(CURDATE(), '%Y-12-31')";
            break;
    }
    // Faz a consulta no MySQL em função dos argumentos
    $sql = "SELECT SUM(`".$campo."`) FROM `".$_CV['tabela']."` WHERE ".$busca;
    $query = mysql_query($sql);
    $resultado = mysql_fetch_row($query);
    // Retorna o valor encontrado ou zero
    return (!empty($resultado)) ? (int)$resultado[0] : 0;
 }
 if ($_CV['registraAuto'] == true) { registraVisita(); }
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Letícia e Breno</title>
		<link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
		<link rel="stylesheet" type="text/css" href="_css/confirmacao.css"/>
		<link rel="stylesheet" type="text/css" href="_css/rodape.css"/>
		<link rel="stylesheet" type="text/css" href="_css/audio.css"/>
		<link rel="shortcut icon" href="_imagens/icone.png"/>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>
		<script src="jquery.countdown-2.2.0/jquery.countdown.js"></script>
		<script src="_javascript/funcoes.js"></script>
	</head>
	<body>
		<div id="cabecalho">
			<h1>Letícia e Breno</h1>
			<h2>17 de Junho de 2017</h2>
		</div>
		
		<nav id="menu" class="posicao-menu">
			<ul>
				<li><a href="home.php">Home</a></li>
				<li><a href="presenca.php">Confirmação de Presença</a></li>
				<li><a href="presentes.php">Lista de Presentes</a></li>
				<li><a href="mensagens.php">Mural de Mensagens</a></li>
				<li><a href="festa.php">Festa</a></li>
				<li><a href="fotos.php">Álbum</a></li>
				<li><a href="dicas.php">Dicas</a></li>
			</ul>
		</nav>
		
		<div id="teste">
		
		<figure>
			<img src="_imagens/moldura.png"/>
			<figcaption>
				<h1>Confirmar Presença</h1>
			</figcaption>
		</figure>
		
		<div id="texto-principal">
			<h2>Faça parte da nossa história de amor, confirme sua presença.</h2>
		</div>
		
			<form id="confirmacao" method="post" action="_php/confirma.php">
				<fieldset id="bloco-confirmacao">
				<legend>Identificação do Usuário</legend>
				
				<input type="text" id="nomeConvidado" name="nomeConvidado" placeholder="Nome Completo do Convidado"/>
				<fieldset id="resposta">Você irá ao evento?
					<p><label name="tSimLabel" id="cSimLabel" for="cSim">Sim</label><input type="radio" name="tResposta" value="Sim" id="cSim" checked></p>
					<p><label name="tNaoLabel" id="cNaoLabel" for="cNao">Não</label><input type="radio" name="tResposta" value="Nao" id="cNao"/></p>
				</fieldset>
				<p><label name="tQntLabel" id="cQntLabel" for="cQnt">Quantos adultos? </label><input type="number" name="tQnt" id="cQnt" min="1" max="10" value="1"/></label></p></p>
				<input type="text" id="email" name="email" placeholder="E-mail"/>
				<input type="text" id="telefone" name="telefone" placeholder="Telefone" class="telefone"/>
				</fieldset>
				<input id="enviar" type="submit" value="Enviar Dados" onclick="confirmarPresenca()"/>
			</form>
		
		<footer id="rodape">
			<div><p>Faltam <span id="dias">clock</span> dias</p></div>
			<?php
				 // Pega o total de pageviews desde o começo do ano
				$total = pegaVisitas('uniques', 'ano');
				echo "<p>$total Pessoas estiveram aqui</p>";
			?>
		</footer>
		
          <audio id="musica" controls="controls">
            <source src="_songs/beirut.mp3" type="audio/mpeg"/>
          </audio>
		</div>	
	</body>
</html>