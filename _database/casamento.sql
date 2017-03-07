-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Mar-2017 às 19:04
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`nome`, `email`, `mensagem`) VALUES
('Teste', 'teste@teste.com', 'Mensagem pequena'),
('Felipe', 'felipe@email.com', 'teste'),
('Novo Teste', 'teste@teste.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur hendrerit justo, vitae venenatis justo tempor ut. Phasellus posuere pharetra velit, at faucibus libero lacinia a. Cras nec arcu eget purus sollicitudin commodo. Sed sagittis velit id nulla faucibus consequat. Etiam ultricies nec tellus eget cursus. Donec tempus ut sapien sit amet finibus. Proin nec bibendum metus. Aliquam nibh dui, semper ut felis a, egestas pellentesque est. Nunc molestie metus ut varius porta. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens2`
--

CREATE TABLE `mensagens2` (
  `nome` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens2`
--

INSERT INTO `mensagens2` (`nome`, `email`, `mensagem`, `data`) VALUES
('Teste', 'teste@email.com', 'mensagem de teste', '2016-10-18'),
('Felipe', 'felipe@email.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dui urna, congue ac tellus nec, tristique volutpat magna. In luctus, lacus sit amet dapibus maximus, ex enim sollicitudin velit, in aliquam orci mauris id nibh. Proin ut arcu purus. Nunc ut nulla a augue commodo facilisis. Ut suscipit elit mauris, in bibendum metus euismod eu. Morbi ac mollis lacus, vitae pharetra lectus. Suspendisse nisi sapien, tempor iaculis eros ac, pellentesque bibendum risus. Etiam consectetur tempor ex, eu faucibus magna hendrerit vel. Donec efficitur ante ut arcu euismod ultrices.', '0000-00-00'),
('Felipe 2', 'felipe2@email.com', 'Mensagem de teste', '2016-10-18'),
('Felipe 3', 'felipe3@email.com', 'Nova Mensagem de teste.', '2016-10-18'),
('Leticia', 'leticiadias_15@hotma', 'mensagem', '2017-01-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `Nome` varchar(50) NOT NULL,
  `Confirmacao` varchar(3) NOT NULL,
  `Adultos` int(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `Telefone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`Nome`, `Confirmacao`, `Adultos`, `Email`, `DDD`, `Telefone`) VALUES
('Felipe Dias', '0', 2, 'teste@eu.com', '32', '34413285'),
('Ana Paula', 'sim', 3, 'testeana@eu.com', '31', '92477482'),
('LetÃ­cia Dias', 'sim', 1, 'leticia@email.com', '32', '88235049');

-- --------------------------------------------------------

--
-- Estrutura da tabela `presenca`
--

CREATE TABLE `presenca` (
  `nome` varchar(50) NOT NULL,
  `confirmacao` varchar(5) NOT NULL,
  `adultos` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `presenca`
--

INSERT INTO `presenca` (`nome`, `confirmacao`, `adultos`, `email`, `telefone`) VALUES
('Felipe Dias', 'Sim', 2, 'felipe@email.com', '(31) 99245-6314'),
('Felipe Dias', 'Sim', 2, 'felipe@email.com', '(31) 99245-6314'),
('Ana Paula', 'Nao', 1, '', ''),
('Marcia', 'Sim', 3, 'marcia@email.com', '(32) 3441-3285'),
('Leticia', 'Sim', 2, 'leticia@email.com', '(32) 3441-3285'),
('Joao', 'Sim', 3, 'joao@email.com', '(32) 3441-5642'),
('Novo teste', 'Sim', 2, 'novo@email.com', '(32) 3441-4553');

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitas`
--

CREATE TABLE `visitas` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `uniques` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageviews` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `visitas`
--

INSERT INTO `visitas` (`id`, `data`, `uniques`, `pageviews`) VALUES
(1, '2016-09-15', 1, 11),
(2, '2016-10-18', 1, 29),
(3, '2016-10-24', 1, 148),
(4, '2016-10-26', 1, 1),
(5, '2016-10-31', 1, 16),
(6, '2016-11-01', 1, 4),
(7, '2017-01-01', 1, 21),
(8, '2017-01-09', 1, 184),
(9, '2017-01-10', 2, 31),
(10, '2017-01-11', 1, 3),
(11, '2017-01-12', 1, 56),
(12, '2017-02-06', 1, 1),
(13, '2017-03-06', 1, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data` (`data`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
