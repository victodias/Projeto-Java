-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2018 às 11:50
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdjava`
--
CREATE DATABASE IF NOT EXISTS `bdjava` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdjava`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Gustavo Camargo', '11111111111', 999999999, 'guga@gmail.com', 'Rua Sousa Lima, 200', 'Barra Funda', 'São Paulo', 'SP', 11111111),
(2, 'Gabriel Mier Biadeni', '22222222222', 988888888, 'gbiadeni@gmail.com', 'Rua Barra Funda, 100', 'Barra Funda', 'São Paulo', 'SP', 22222222),
(3, 'Victor Dias de Oliveira', '33333333333', 977777777, 'victordias@gmail.com', 'Av. Francisco Matarazzo, 300', 'Barra Funda', 'São Paulo', 'SP', 33333333),
(4, 'Juliana Barbosa de Lira', '44444444444', 966666666, 'juliana@gmail.com', 'Rua Clélia, 500', 'Lapa', 'São Paulo', 'SP', 44444444),
(5, 'Vania Souza', '77777777777', 777777777, 'vania@gmail.com', 'Av Paulista, 200', 'Consolação', 'Sao Paulo', 'SP', 77777777);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogo` int(10) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `preco` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id_jogo`, `nome`, `genero`, `preco`) VALUES
(4, 'God Of War III', 'Guerra', '100'),
(5, 'Counter Strike: Global Offensive', 'Tiro', '30'),
(6, 'GTA V', 'Tiro/Mundo aberto', '150');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `hierarquia` set('B','P','O') NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `idFunc` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`usuario`, `senha`, `hierarquia`, `Nome`, `Email`, `idFunc`) VALUES
('admin', 'admin', 'B', 'Admin', 'admin@bsg.com.br', 1),
('adolfo', '123', 'P', 'Adolfo Luiz de Almeida', 'adolfo@bsg.com.br', 2),
('joao', 'joao', 'B', 'joao', 'joao@bsg.com.br', 3),
('luquinhas', '123', 'O', 'Lucas de Almeida', 'lucas@bsg.com.br', 4),
('kleber', '123', 'O', 'Klebinho', 'klebinho@bsg.com.br', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idFunc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idFunc` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
