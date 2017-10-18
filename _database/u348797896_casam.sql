-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20/06/2017 às 10:17
-- Versão do servidor: 10.1.24-MariaDB
-- Versão do PHP: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u348797896_casam`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `mensagens`
--

INSERT INTO `mensagens` (`nome`, `email`, `mensagem`, `data`) VALUES
('Rita de Cassia Morei', '', 'Desejo a vcs muitas felicidades ...que este passo mas suas vidas seja um caminho de muito amor. .que continuem juntos por toda vida e que Deus abençoe esta união. ', '2017-04-17'),
('João Bahia', 'jbbahia@uai.com.br', 'E disse o Senhor Deus: Não é bom que o homem esteja só; far-lhe-ei uma ajudadora idônea para ele. Gênesis 2:18\r\n\r\n...e juntos, formarão uma família abençoada!', '2017-05-09'),
('Rebecca Reis', 'rebeccacrqueiroz@hot', 'Ahhhhh seus lindos... toda felicidade, amor, tudo de melhor nessa nova fase da vida de vocês!!!! Que Deus abençoe sempre vcs... Beijos', '2017-05-11'),
('Leila Almeida Vieira', 'leila.vieira@yahoo.c', 'Superar os momentos difíceis é sabedoria.\r\n\r\nViver os momentos felizes é uma arte.\r\n\r\nQue a felicidade a dois continue sendo objetivo principal de suas vidas.\r\n\r\nQue a caminhada seja longa, repleta de amor e compreensão.\r\n\r\nVotos de felicidades ao novo casal.', '2017-05-12'),
('FERNANDA CAMPOS DE M', 'FERNANDACMELLO@YAHOO', ' Que esta nova etapa de suas vidas seja coberta de bençãos, recheada de felicidade e repleta de harmonia.\r\nParabéns ao novo casal, extensivo aos seus pais!', '2017-05-24'),
('Bianca Moraes', 'biank_aguiar@hotmail', 'Desejo a vcs toda a felicidade do mundo! Desde a faculdade sempre achei que formavam um casal lindo que se completam! E que Deus abençõe essa união! Bjos!', '2017-05-26'),
('Mariana Hufnagel', 'marianahufnagel@gmai', 'Casal! Muita energia boa pra vocês nesse momento tão único e tão especial! Boa sorte nessa nova etapa, que vocês consigam sempre ter uma vida cheia de realizações! Muitas felicidades, sempre! Desejo que a família que vocês estão construindo seja repleta de amor, carinho e cumplicidade. Bj pra vocês! P.S. Eu tô de olho hein! hahahaha', '2017-05-28'),
('LEANDRA E FAMILIA', 'leandraipolito@gmail', 'A VIDA É FEITA DE MOMENTOS BONS E RUINS.APROVEITEM INTENSAMENTE OS BONS E ESTEJAM UNIDOS PARA SUPERAR OS RUINS.ASSIM SE CONSTRÓI UM CASAMENTO DURADOURO E FELIZ!', '2017-05-30'),
('Laura e Warlley', 'laurapsi@hotmail.com', 'Queridos amigos, \r\né com muito amor e alegria que compartilhamos com vocês esse momento tão especial. Nosso vínculo só demonstra a nossa capacidade de amar e ser feliz! Desejamos a vocês, assim como desejamos a nós mesmos, uma vida a dois regada de sorrisos, conquistas, paciência e perseverança. Que o caminho seja longo e tranquilo!! Amamos vocês! Estamos na contagem regressiva!! ', '2017-05-30'),
('José Luiz', 'zeluizjferraz@yahoo.', 'Que este amor que os uniu permaneça para sempre em seus corações.\r\nSejam muito felizes!  ', '2017-06-01'),
('cristina ramalho', 'ramalho.mariacristin', 'Que voces sejam felizes nesta nova etapa de suas vidas. ', '2017-06-03'),
('Jader Joaquim de Sou', 'jader@leopoldina.cef', 'Que esta nova etapa de suas vidas seja coberta de bênçãos, pois o casamento é um comprometimento que exige respeito, compreensão e muito amor a dois!\r\nParabéns.', '2017-06-04'),
('MADRINHA CRISTINA', 'm.cristinaguiar@gmai', 'Não namore para casar. Case para namorar para sempre.\r\nDeus abençoe está nova caminhada.', '2017-06-06'),
('Colegas da Pró-reito', 'secretaria.extensao@', 'Letícia e Breno,\r\nUm casamento feliz se constrói com muito amor, carinho e compreensão.\r\nDesejamos que esses sentimentos estejam sempre presentes na vida de vocês.', '2017-06-12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `presenca`
--

CREATE TABLE `presenca` (
  `nome` varchar(50) NOT NULL,
  `confirmacao` varchar(5) NOT NULL,
  `adultos` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `acompanhantes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `presenca`
--

INSERT INTO `presenca` (`nome`, `confirmacao`, `adultos`, `email`, `telefone`, `acompanhantes`) VALUES
('marcia', 'Sim', 1, 'marciadutra_06@yahoo', '(32) 3441-3285', ''),
('José Luiz Junqueira Ferraz', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-3285', 'Felipe'),
('Rita de Cassia Moreira Baia', 'Sim', 3, 'Vigisaude', '(33) 98429-6948', 'José Geraldo Baia\r\nVitor Moreira Baia'),
('Cleonice Ornelas da Silva', 'Sim', 2, '', '(33) 98429-6948', 'Mauro Jardim de Oliveira'),
('Brenda Moreira de Oliveira', 'Sim', 1, 'brendamoreirapsic@gm', '(33) 98435-3410', ''),
('Lucas Bitencourt Moraes', 'Sim', 1, 'lucasbitencourtmorae', '(33) 98446-6391', ''),
('Marlene de Fátima Moreira', 'Sim', 1, 'marlenedefatimam@hot', '(33) 98447-8925', ''),
('Terezinha Ornelas Moreira', 'Sim', 1, '', '(33) 98447-8925', ''),
('Ana Paula Miranda', 'Sim', 1, 'ana.p.miranda09@gmai', '(31) 99274-3482', ''),
('Luana Machado Custodio da Costa ', 'Sim', 2, 'luanamachadoc@hotmai', '(32) 99108-5796', 'Romero Saar da Costa '),
('Maria Aparecida Moreira de Assis', 'Sim', 1, '', '(33) 9842-1855', ''),
('Maria Moreira Rodrigues', 'Sim', 1, '', '(33) 98429-6948', ''),
('Vencesly Borboleta Baia', 'Sim', 2, '', '(33) 98429-6948', 'Ícaro Bahia'),
('Denise Gama Campana Barbosa', 'Sim', 2, 'denise_campana@yahoo', '(32) 99958-6664', 'Jorge Luiz Rezende Barbosa'),
('Quemilly Fortes da Silva', 'Sim', 1, '', '(33) 98458-6475', ''),
('Bianca Moraes Aguiar', 'Sim', 2, 'biank_aguiar@hotmail', '(32) 9158-5895', 'Filipe Medeiros '),
('Ana Lívia de Souza Coimbra', 'Sim', 2, 'analivia1002@gmail.c', '(32) 99102-7782', 'Álvaro Quelhas'),
('Sônia Maria Costa Fajardo', 'Sim', 2, 'scostafajardo@yahoo.', '(32) 99988-1477', 'Rodrigo Lacerda Monteiro'),
('Dângelo Moreira de Oliveira', 'Sim', 2, 'dangello_moreira@hot', '(22) 98107-8694', 'Dângelo Moreira de Oliveira\r\nLaelma de Jesus'),
('Simone Borges Rezende ', 'Sim', 2, 'sissi_rezende@hotmai', '(32) 99162-9661', 'Matheus Borges Rezende'),
('Pedro Assis', 'Sim', 1, '', '(32) 8811-9113', ''),
('Rebecca Côrtes Reis Queiroz', 'Sim', 1, 'rebeccacrqueiroz@hot', '(32) 98814-5646', ''),
('Luiziana Rezende', 'Sim', 2, 'luizianarezende2@gma', '(21) 98802-3398', 'Rafael Giannetti'),
('Leila Almeida Vieira', 'Sim', 2, 'leila.vieira@yahoo.c', '(32) 99936-4372', 'Marcio Floriano de Miranda Garcia'),
('paulo henrique garcia', 'Sim', 2, 'paulo.garcia@educaca', '(32) 3449-2362', 'Marta Lucia Garcia'),
('Lucas Gomes', 'Sim', 1, '', '(33) 98419-1157', ''),
('Larize Mendes', 'Sim', 1, '', '(33) 98419-1157', ''),
('Matheus Tambasco', 'Sim', 2, 'teteustambasco@hotma', '(32) 98421-5992', 'Larissa Tambasco'),
('Sônia Maria Costa Rezende', 'Sim', 4, 'carol.costa2@hotmail', '(32) 3441-6436', 'José Rosa, Carolina Costa, Thalis Rosa'),
('GELSON FERRAZ DA SILVA', 'Sim', 2, 'baianogel@bol.com.br', '(32) 9967-7610', 'JESSICA BARBOSA REZENDE'),
('Flavio augusto pires da mota', 'Sim', 2, 'larissaeme@hotmail.c', '(33) 8831-5692', 'Larissa emerich'),
('Michel junio Dutra', 'Sim', 2, 'brena147@hotmail.com', '(33) 98436-5114', 'Brena Lorraine da Silva Vilela'),
('Olga e familia ', 'Nao', 0, 'ccgv.ccgv@hotmail.co', '(32) 99113-0885', ''),
('Laryssa Xavier Araújo', 'Sim', 1, 'laryssa_xa@hotmail.c', '(32) 99926-1756', ''),
('Gustavo Lessa Beloti de Souza', 'Sim', 1, 'gustavo@beloti.com.b', '(32) 99908-0615', ''),
('Cintia Oliveira Silva', 'Sim', 2, 'oliveirascintia11@gm', '35 99167-0377', 'David Gitirana da Rocha'),
('Ana Paula Ipolito Freire', 'Sim', 5, 'paulaipolito@bol.com', '(34) 3441-7039', 'JURACY IPOLITO FREIRE\r\nANA  PAULA IPOLITO FREIRE\r\nWILLIAM G. OLIVEIRA\r\nLUIZ OTAVIO IPOLITO FREIRE\r\nDANIELE MARREIRO B. FREIRE\r\nCRIANÇAS- JOÃO LUIZ F. OLIVEIRA  E GIOANA M. B FREIRE\r\n'),
('FERNANDA CAMPOS DE MELLO BARBOSA', 'Sim', 2, 'FERNANDACMELLO@YAHOO', '(32) 98845-2696', 'Fernanda e Bruno '),
('Marliene', 'Sim', 2, 'marlienelacerda@yaho', '(32) 99984-5526', 'Alexandre'),
('FERNANDA GAMA CAMPANA GOMIDE', 'Sim', 2, 'fernanda@evginfo.com', '(31) 99951-1412', 'EVANDRO OTTONI DE CARVALHO GOMIDE'),
('Regina Ribeiro de Oliveira', 'Sim', 2, 'regina_mg2006@hotmai', '(32) 9922-6764', 'JORGE'),
('Terezinha do Carmo Gama Ribeiro', 'Sim', 3, 'pollyanna@mfcconsult', '(32) 98854-7286', 'Francis Jane Gama Ribeiro\r\nPollyanna Gama Ribeiro'),
('Edina Resende Dias', 'Sim', 5, 'thaisresendedias@gma', '(32) 98801-5070', 'Thais Resende Dias\r\nErnane Carminate \r\nTarcisio Resende Dias\r\nBeatriz Peixoto '),
('Ana Laura Dutra campana', 'Sim', 4, 'analaura_campana@hot', '(32) 99940-8404', 'Ana Cláudia\r\nElma\r\nFelipe'),
('Carlos baia', 'Sim', 3, 'claudia.baia@uol.com', '(24) 98809-3711', 'Claudia A. C.Baia\r\nCarlos Gabriel C. Baia'),
('Neuza Ipólito Lopesj', 'Sim', 2, 'jpdias71@yahoo.com.b', '(32) 98835-8154', 'Vanor Lopes'),
('CAROLINA FAJARDO SILVA', 'Sim', 1, 'krolfajardo@hotmail.', '(32) 98801-5131', ''),
('Mariana Hufnagel', 'Sim', 2, 'marianahufnagel@gmai', '(32) 99125-6752', 'Marlon Garcia'),
('Vitor Cunha Fontes', 'Sim', 2, 'vitor.ufv2005@gmail.', '(31) 99149-9233', 'Camila Ferreira Azevedo'),
('Carlos Augusto Motta', 'Sim', 4, 'biomota2009@hotmail.', '(32) 98811-9113', 'Carlos Augusto Duarte Mota\r\nOndina Mota\r\nMárcia Pires'),
('Lais A. Rezende Rodrigues', 'Sim', 2, 'laisrrodrigues@hotma', '(32) 98854-4541', 'Leonardo de Castro'),
('Juliana Pachiega Dias', 'Sim', 3, '', '(32) 98835-8154', 'Anderson\r\nJuraci'),
('PATRICIA PEREIRA PIMENTA PRADO', 'Sim', 1, 'PATY2307@HOTMAIL.COM', '(35) 99705-3378', ''),
('Bernadete Araújo Cardoso de paula', 'Sim', 2, 'araujo.bernadete@yah', '(32) 98887-1951', 'Douglas Gomes Ramos'),
('RICARDO RIBEIRO PRADO', 'Sim', 1, 'PATY2307@HOTMAIL.COM', '(35) 99705-3378', ''),
('Lucas Mesquita Campos', 'Sim', 2, ' lucasmesquit2@gmail', '(32) 98883-0086', 'Lucas Mesquita Campos\r\nVirginia Gomide Ribeiro'),
('Maria Neide Vargas dos Santos ', 'Sim', 1, '', '(32) 8803-1476', ''),
('Elizete Hipólito Vargas ', 'Sim', 1, '', '(32) 8816-6869', ''),
('Jorge Pereira Ponte e Maria Imaculada Vargas Ponte', 'Sim', 2, '', '(32) 9923-5117', ''),
('Maria Carmen', 'Sim', 1, 'zeluizjferraz@yahoo.', '(32) 3441-2918', ''),
('Renato', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-2918', 'Cristiane'),
('Quirino', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-2918', 'Deise'),
('Serginho', 'Sim', 3, 'zeluizjferraz@yahoo.', '(32) 3441-3285', 'Silvia, Adriana, '),
('Eduardo Cruzato Ferraz', 'Sim', 2, 'milleny@damataleo.co', '(32) 99821-9039', 'Milleny Machado Teixeira'),
('Leandra Ipolito de Araujo Pengo', 'Sim', 4, 'leandraipolito@gmail', '(32) 99928-7954', 'Weber Correia Pengo\r\nLarissa de Araujo Barbosa\r\nLara de Araujo Pengo\r\n'),
('Rafaela Andrade Savino de Oliveira', 'Sim', 2, 'rafasavino74@hotmail', '(32) 98812-4197', 'José Leandro Peters'),
('Warlley Moraes Botelho Junior ', 'Sim', 2, 'laurapsi@hotmail.com', '(32) 98887-3740', 'Laura Monteiro Junqueira Botelho '),
('Camila Corrêa Ferreira', 'Sim', 1, 'camilacorreaferreira', '(32) 9914-53431', ''),
('Carla Duarte Mota ', 'Sim', 1, '', '(33) 8823-1655', ''),
('Carlos Mariano Alvez Valles', 'Sim', 1, 'marianoalvez@gmail.c', '(32) 98848-4193', ''),
('ITAMAR DE ALMEIDA REZENDE', 'Sim', 2, 'renatagcrezende@gmai', '(32) 3441-2255', 'Renata Gama Campana Rezende'),
('Vera Lucia Junqueira Ferraz', 'Sim', 1, 'veraljferraz@gmail.c', '(31) 3275-4427', ''),
('Gabriele Lacerda soares ', 'Sim', 1, 'gabriele_etfg@hotmai', '(33) 98426-6946', ''),
('Juliana', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-2918', 'Shone'),
('Jessika Gomes da Mata', 'Sim', 2, 'damata.jessikaenf@gm', '(32) 98853-8588', 'Ricardo Miranda'),
('Jéssika Pereira de Almeida', 'Sim', 2, 'leticiadias_15@hotma', '(32) 98823-5049', 'Hugo Ramalho'),
('Pâmela Badaró', 'Sim', 1, 'leticiadias_15@hotma', '(32) 98823-5049', ''),
('Fabiana Filipino Coelho', 'Sim', 2, 'bianajf@gmail.com', '(32) 99121-3368', 'Daniel Marchi de Oliveira'),
('Sebastião Vicente Moreira', 'Sim', 1, '', '(33) 98429-6948', ''),
('Jaime Leandro Moreira Filho', 'Sim', 1, '', '(33) 98429-6948', ''),
('EVA ORNELA MOREIRA DUTRA', 'Sim', 4, 'eva-moreiradutra@hot', '(33) 3331-1947_', 'Mariana Moreira Dutra, Wiglersom Moreira Dutra e Felipe Ricardo da Silva'),
('franciane da silva furtado', 'Sim', 2, 'dfranciane1615@gmail', '(32) 8850-2696', 'marcos'),
('Letícia Stephan Tavares', 'Sim', 2, 'leticia.stephan@gmai', '(32) 99964-3362', 'Marcelo de Oliveira Santos'),
('Talitha Caiafa Ferreira Alves Botelho', 'Sim', 1, 'talithacfab@gmail.co', '(32) 98429-5135', ''),
('Lívia', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-2918', 'Wilmar'),
('Antonio Márcio', 'Sim', 2, 'zeluizjferraz@yahoo.', '(32) 3441-2918', 'Fabíola'),
('Lorena de Oliveira Pimenta', 'Sim', 1, 'lorenaopimenta@bol.c', '(32) 99956-1485', ''),
('Adenilson Medeiros de Paula', 'Sim', 1, '', '(32) 99996-5568', ''),
('Mara', 'Sim', 1, 'zeluizjferraz@yahoo.', '(32) 3441-2918', ''),
('Danielle Luciana aurora Soares do Amaral', 'Sim', 2, 'dlasamaral_dani@hotm', '(32) 98417-6107', 'Vitor Fortuna'),
('Angela', 'Sim', 3, 'marciadutra_06@yahoo', '(32) 3441-3285', 'Alexandra e Felipe'),
('Fabricio Gaetho Coelho', 'Sim', 1, 'fafugc@gmail.com', '(32) 98846-9285', ''),
('Cristina Ramalho ', 'Sim', 2, 'ramalho.mariacristin', '(32) 98887-7704', 'Anderson Ramalho'),
('Jader Joaquim de Souza', 'Sim', 3, 'jader@leopoldina.cef', '(32) 9951-5512', 'Ana Paula Silva dos Santos\r\nGabriela Viana Souza\r\nJuan Lucas Santos e Souza\r\nMaria Paula Santos e Souza'),
('Filipe Villela Barroso', 'Sim', 1, 'filipebdama@gmail.co', '(32) 98844-0171', ''),
('Marielly da Silva coelho', 'Sim', 1, 'dfranciane1615@gmail', '(32) 8850-2696', ''),
('ADAGILDA E BEBETO', 'Sim', 2, 'crhvargas@gmail.com', '(32) 3441-4019', 'Adagilda e Bebeto'),
('Nilhian Gonçalves de Almeida', 'Sim', 1, 'nilhian@yahoo.com.br', '(32) 98457-3848', ''),
('Helcio Lavall Damião', 'Sim', 2, 'Helciohdjf@hotmail.c', '(32) 98806-3826', 'Ana Carolina Moreira Gerheim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `visitas`
--

CREATE TABLE `visitas` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `uniques` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageviews` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `visitas`
--

INSERT INTO `visitas` (`id`, `data`, `uniques`, `pageviews`) VALUES
(38, '2017-04-11', 10, 14),
(39, '2017-04-12', 15, 56),
(40, '2017-04-13', 8, 36),
(41, '2017-04-14', 8, 25),
(42, '2017-04-15', 8, 14),
(43, '2017-04-16', 3, 3),
(44, '2017-04-17', 5, 18),
(45, '2017-04-18', 6, 9),
(46, '2017-04-19', 18, 52),
(47, '2017-04-20', 7, 14),
(48, '2017-04-21', 13, 31),
(49, '2017-04-22', 6, 10),
(50, '2017-04-23', 6, 9),
(51, '2017-04-24', 4, 9),
(52, '2017-04-25', 4, 5),
(53, '2017-04-26', 34, 34),
(54, '2017-04-27', 9, 15),
(55, '2017-04-28', 5, 11),
(56, '2017-04-29', 10, 24),
(57, '2017-04-30', 7, 12),
(58, '2017-05-01', 18, 18),
(59, '2017-05-02', 8, 20),
(60, '2017-05-03', 15, 63),
(61, '2017-05-04', 8, 30),
(62, '2017-05-05', 5, 16),
(63, '2017-05-06', 17, 43),
(64, '2017-05-07', 4, 4),
(65, '2017-05-08', 15, 51),
(66, '2017-05-09', 18, 80),
(67, '2017-05-10', 20, 72),
(68, '2017-05-11', 14, 48),
(69, '2017-05-12', 10, 45),
(70, '2017-05-13', 8, 23),
(71, '2017-05-14', 14, 40),
(72, '2017-05-15', 11, 18),
(73, '2017-05-16', 3, 8),
(74, '2017-05-17', 7, 18),
(75, '2017-05-18', 14, 33),
(76, '2017-05-19', 7, 9),
(77, '2017-05-20', 8, 15),
(78, '2017-05-21', 12, 29),
(79, '2017-05-22', 12, 19),
(80, '2017-05-23', 30, 58),
(81, '2017-05-24', 12, 45),
(82, '2017-05-25', 12, 21),
(83, '2017-05-26', 21, 74),
(84, '2017-05-27', 16, 44),
(85, '2017-05-28', 19, 79),
(86, '2017-05-29', 19, 55),
(87, '2017-05-30', 19, 90),
(88, '2017-05-31', 19, 71),
(89, '2017-06-01', 34, 121),
(90, '2017-06-02', 15, 38),
(91, '2017-06-03', 14, 30),
(92, '2017-06-04', 18, 73),
(93, '2017-06-05', 36, 52),
(94, '2017-06-06', 38, 61),
(95, '2017-06-07', 51, 91),
(96, '2017-06-08', 47, 72),
(97, '2017-06-09', 45, 58),
(98, '2017-06-10', 36, 37),
(99, '2017-06-11', 40, 63),
(100, '2017-06-12', 56, 90),
(101, '2017-06-13', 60, 87),
(102, '2017-06-14', 57, 81),
(103, '2017-06-15', 50, 65),
(104, '2017-06-16', 52, 65),
(105, '2017-06-17', 57, 85),
(106, '2017-06-18', 66, 68),
(107, '2017-06-19', 65, 79),
(108, '2017-06-20', 24, 27);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data` (`data`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
