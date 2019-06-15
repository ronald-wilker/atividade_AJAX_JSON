-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 15/06/2019 às 17:42
-- Versão do servidor: 5.7.26-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desespero`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `altura` varchar(200) NOT NULL,
  `idade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `altura`, `idade`) VALUES
(26, 'mocoto', '155', '25'),
(27, 'ronald wilker de almeuda andadad', '22', '222'),
(28, 'ronald wilker de almeuda andadad', '22', '222'),
(29, 'ronald wilker de almeuda andadad', '22', '222'),
(30, 'ronald wilker de almeuda andadad', '22', '222'),
(31, 'ronald wilker de almeuda andadad', '22', '222'),
(32, 'ronald wilker de almeuda andadad', '22', '222'),
(33, 'ronald wilker de almeuda andadad', '22', '222'),
(34, 'ronald wilker de almeuda andadad', '22', '222'),
(35, 'ronald wilker de almeuda andadad', '22', '222'),
(36, 'carlos daniel da  silva', '160', '22'),
(37, 'carlos daniel da  silva', '160', '22'),
(38, 'camarÃ£o com peixe', '165', '175'),
(39, 'Macaco_louco', '198', '80'),
(40, 'Macaco_louco', '198', '80'),
(41, 'Macaco_louco', '198', '80'),
(42, 'Macaco_louco', '198', '80'),
(43, 'Macaco_louco', '198', '90'),
(44, 'Macaco_louco', '198', '90'),
(45, 'Macaco_lo', '123', '23'),
(46, 'Macaco_lo', '123', '23'),
(47, 'monster', '220', '120'),
(48, 'cacau', '220', '120'),
(49, 'mucura', '220', '120'),
(50, 'mucura', '220', '120'),
(51, 'mucura', '220', '120'),
(52, 'treta', '55', '55'),
(53, 'buda', '55', '55'),
(54, 'hat', '55', '55'),
(55, 'crover', '55', '55'),
(56, 'we', '23', '34'),
(57, 'we', '23', '34'),
(58, 'we', '23', '34'),
(59, 'we', '23', '34'),
(60, 'we', '23', '34'),
(61, 'tat', '1212', '12'),
(62, 'tate', '1212', '12'),
(63, 'tate', '1212', '12'),
(64, 'taterrr', '1212', '12'),
(65, 'ataterrr', '1212', '12'),
(66, 'mosntro green', '2,55', '125');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
