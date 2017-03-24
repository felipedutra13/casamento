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
 $_CV['servidor'] = 'mysql.weblink.com.br';    // Servidor MySQL
 $_CV['usuario'] = 'u348797896_fdias';          // UsuÃ¡rio MySQL
 $_CV['senha'] = '130392';                // Senha MySQL
 $_CV['banco'] = 'u348797896_casam';       // Banco de dados MySQL
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
		<link rel="stylesheet" type="text/css" href="_css/festa.css"/>
		<link rel="stylesheet" type="text/css" href="_css/mural.css"/>
		<link rel="stylesheet" type="text/css" href="_css/rodape.css"/>
		<link rel="stylesheet" type="text/css" href="_css/audio.css"/>
		<link rel="shortcut icon" href="_imagens/icone.png"/>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
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
				<li><a href="http://leticiaebreno.com">Home</a></li>
				<li><a href="presenca.php">Confirmação de Presença</a></li>
				<li><a href="presentes.php">Lista de Presentes</a></li>
				<li><a href="mensagens.php">Mural de Mensagens</a></li>
				<li><a href="festa.php">Cerimônia</a></li>
				<li><a href="fotos.php">Álbum</a></li>
				<li><a href="dicas.php">Dicas</a></li>
			</ul>
		</nav>
		
		<div id="teste">
		<div id="texto-principal">
			<h1>Sejam bem-vindos ao nosso site! ♥</h1>

			<h2>O dia mais esperado das nossas vidas está chegando e tem sido um prazer compartilhar nossas emoções com vocês!</h2>

			<p>Como muitos de vocês sabem, a contagem regressiva começou a cerca de 9 anos atrás! E agora, o grande dia está chegando!</p>
			<p>Criamos esse site para compartilhar com vocês os detalhes da organização do nosso casamento.</p>
			<p>Somos muito gratos a Deus pela oportunidade de poder compartilhar com vocês a nossa felicidade!</p>
			<p>Não esqueça de confirmar sua presença!</p>
			<p>Aguardamos vocês no nosso grande dia!</p>
			<p>Letícia e Breno</p>

			
		</div>
		
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