-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 20:18
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(35) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `stats` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `modelo`, `marca`, `ano`, `placa`, `cor`, `categoria`, `stats`) VALUES
(1, 'Skyline GT-R', 'Nissan', '2002', '24HYDS3', 'Roxo e pra', 'Desportivo', 'Em manutenção'),
(2, 'Supra MK4', 'Toyota', '2002', '12KJ5L3', 'Preto', 'Desportivo', 'Em manutenção'),
(3, 'Mustang GT', 'Ford', '2005', '7GTYRD4', 'Vermelho', 'Muscle', 'Disponível'),
(4, 'Civic Type R', 'Honda', '2010', '3HJKS92', 'Azul', 'Hatch', 'Em manutenção'),
(5, 'Lancer Evolution', 'Mitsubishi', '2008', '5LKJTY1', 'Preto', 'Desportivo', 'Disponível'),
(6, 'Challenger SRT', 'Dodge', '2019', '2ABC345', 'Vermelho', 'Muscle', 'Disponível'),
(7, '911 Carrera', 'Porsche', '2020', '3DEF678', 'Prata', 'Desportivo', 'Em manutenção'),
(8, 'Gallardo', 'Lamborghini', '2015', '4GHI901', 'Amarelo', 'Desportivo', 'Disponível'),
(9, 'Impreza WRX', 'Subaru', '2018', '5JKL234', 'Azul', 'Hatch', 'Disponível'),
(10, 'Aventador', 'Lamborghini', '2019', '6MNO567', 'Preto', 'Desportivo', 'Em manutenção');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data_nascimento`) VALUES
(1, 'Tochocho Nakama', 2147483647, '15 989894646', 'tobroxa@gmail.com', 'Rua Los Angeles Lakers n°33 Votocel', '2000-12-30'),
(2, 'Noku Dabicha', 2147483647, '15 987654321', 'noku@gmail.com', 'Rua das Palmeiras n°12 Votocel', '1995-05-21'),
(3, 'Gozo Nakosha', 2147483647, '15 996633221', 'gozo@gmail.com', 'Av. Brasil n°45 Votocel', '1988-11-10'),
(4, 'Takaru Awara', 2147483647, '15 912345678', 'takaru@gmail.com', 'Rua do Sol n°7 Votocel', '2001-02-14'),
(5, 'Tokuku Duro', 2147483647, '15 998877665', 'tokuku@gmail.com', 'Av. das Flores n°99 Votocel', '1999-08-30'),
(6, 'Kuragato Nakasa', 2147483647, '15 912345678', 'kuragato@gmail.com', 'Rua das Acácias n°101 Votocel', '1992-04-12'),
(7, 'Tebato Nakara', 2147483647, '15 923456789', 'tebato@gmail.com', 'Av. Japão n°55 Votocel', '1989-07-25'),
(8, 'Sataro Banco', 2147483647, '15 934567890', 'sataro@gmail.com', 'Rua Sakura n°88 Votocel', '1995-01-30'),
(9, 'Massaru Miamoto', 2147483647, '15 945678901', 'massaro@gmail.com', 'Av. Monte Fuji n°12 Votocel', '2000-10-15'),
(10, 'Sumiu Kotutu', 1234567890, '15 956789012', 'sumiu@gmail.com', 'Rua Hanami n°7 Votocel', '1998-06-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `data_reserva` datetime NOT NULL,
  `data_devolucao` datetime DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_carro`, `data_reserva`, `data_devolucao`, `valor_total`) VALUES
(1, 1, 3, '2025-09-10 09:00:00', '2025-09-12 18:00:00', 1200.00),
(2, 4, 2, '2025-09-11 10:00:00', '2025-09-15 17:00:00', 1500.00),
(3, 7, 6, '2025-09-12 14:00:00', '2025-09-16 16:00:00', 2000.00),
(4, 9, 8, '2025-09-13 08:30:00', '2025-09-17 19:00:00', 2500.00),
(5, 10, 5, '2025-09-14 11:00:00', '2025-09-18 18:30:00', 1800.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_carro` (`id_carro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
