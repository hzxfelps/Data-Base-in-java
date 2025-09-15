-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:49
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 2, '2025-09-19 15:00:00', 'Suspeita de Cancer de prostata'),
(2, 6, 7, '2025-10-16 18:00:00', 'Dores no joelho quando pula'),
(3, 4, 8, '2025-12-21 12:00:00', 'Exame de rotina'),
(4, 8, 7, '2025-09-16 07:00:00', 'Rompimento do tendão de aquiles'),
(5, 3, 9, '2025-09-30 15:00:00', 'Exame de rotina');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiologista', '4444-6666', 'CRM12345'),
(2, 'Dr. Takoku Navara', 'Urologista', '4545-5454', 'CRM54321'),
(3, 'Dr. Tiragato Dakatola', 'Dermatologista', '7676-6767', 'CRM24531'),
(4, 'Dr. Noku Tiamo', 'Oftalmologista', '8989-9898', 'CRM13542'),
(5, 'Dr. Takakara Nossaco', 'Ginecologista', '7656-9345', 'CRM67891'),
(6, 'Dr. Michael Jackson', 'Pediatra', '4459-9866', 'CRM19876'),
(7, 'Dr. Kimedu Dipika', 'Ortopedista', '8878-3888', 'CRM68197'),
(8, 'Dr. Sogozu Nabunda', 'Cardiologista', '4375-7676', 'CRM79186'),
(9, 'Dr. Someto Norrego', 'Neurologista', '3248-4565', 'CRM79861'),
(10, 'Dr. Tachocho Nakama', 'Psiquiatria', '1243-5564', 'CRM67198');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'Raul Guido da Silva', '2008-11-07', '4343-5466', 'Rua Powerguido, n98 Barra Funda', '12-345-678', 'annal@gmail.com'),
(2, 'Gabriel Enzo Carvalho', '2011-05-05', '4345-5656', 'Rua Joaquim Pereira, n43 Barra Funda', '17-645-448', 'gabsreidelas@gmail.com'),
(3, 'Lebron James', '1984-12-30', '4565-7686', 'Rua Cataratas da Puta que pariu, nº547 Vila Nova', '12-345-678', 'lebronha@gmail.com'),
(4, 'LeBronny James', '2003-07-16', '3553-9897', 'Rua Escaralho, nº234 Votocel', '24-423-657', 'leminibronha@gmail.com'),
(5, 'Giannis Antetokounmpo', '1994-12-06', '1111-2222', 'Rua Milwaukee Bucks, nº 34', '12-111-222', 'giannis@bucks.com'),
(6, 'Shaquille O\'Neal', '1972-03-06', '2222-3333', 'Avenida Lakers, nº 34', '13-222-333', 'shaq@nba.com'),
(7, 'Stephen Curry', '1988-03-14', '3333-4444', 'Travessa Golden State, nº 30', '14-333-444', 'curry@warriors.com'),
(8, 'Kyrie Irving', '1992-03-23', '4444-5555', 'Rua Brooklyn Nets, nº 11', '15-444-555', 'kyrie@dallas.com'),
(9, 'Kevin Durant', '1988-09-29', '6666-7777', 'Alameda Phoenix Suns, nº 35', '17-666-777', 'kd@nba.com'),
(10, 'Allen Iverson', '1975-06-07', '7777-8888', 'Rua Philadelphia 76ers, nº 3', '18-777-888', 'theanswer@nba.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
