-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 19:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rh`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(9) NOT NULL,
  `nome_departamento` varchar(30) DEFAULT NULL,
  `localizacao` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nome_departamento`, `localizacao`) VALUES
(1, 'Desenvolvimento', 'Prédio A'),
(2, 'Desenvolvimento web', 'Prédio B'),
(3, 'Marketing', 'Prédio C'),
(4, 'Financeiro', 'Prédio D'),
(5, 'Suporte Técnico', 'Prédio E');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(9) NOT NULL,
  `id_departamento` int(9) DEFAULT NULL,
  `id_treinamento` int(9) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `id_departamento`, `id_treinamento`, `nome`, `cpf`, `data_admissao`, `cargo`) VALUES
(21, 1, 1, 'Vinicius', '123.456.789-00', '2023-03-01', 'Analista de Sistemas'),
(22, 2, 2, 'Giulia', '987.654.321-00', '2022-07-15', 'Desenvolvedora Backe'),
(23, 1, 4, 'Pedro', '111.222.333-44', '2024-01-10', 'Engenheiro de Dados'),
(24, 2, 3, 'Anna Lara', '555.666.777-88', '2023-06-20', 'JavaScript Developer'),
(25, 5, 5, 'Matheus', '999.888.777-66', '2024-04-05', 'Front-end Developer');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(9) NOT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `data_treinamento` date DEFAULT NULL,
  `carga_horaria` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `titulo`, `data_treinamento`, `carga_horaria`) VALUES
(1, 'Python', '2025-10-01', '4 Horas'),
(2, 'POO em Java', '2025-10-05', '6 Horas'),
(3, 'JavaScript', '2025-10-10', '5 Horas'),
(4, 'Banco de Dados SQL', '2025-10-15', '4 Horas'),
(5, 'Html e CSS', '2025-10-20', '6 Horas');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `id_departamento` (`id_departamento`),
  ADD KEY `id_treinamento` (`id_treinamento`);

--
-- Índices de tabela `treinamento`
--
ALTER TABLE `treinamento`
  ADD PRIMARY KEY (`id_treinamento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `treinamento`
--
ALTER TABLE `treinamento`
  MODIFY `id_treinamento` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`id_treinamento`) REFERENCES `treinamento` (`id_treinamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
