-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 14:57
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
-- Banco de dados: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(65) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `cep` varchar(11) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `senha`, `cpf`, `endereco`, `cidade`, `estado`, `cep`, `dataCadastro`) VALUES
(1, 'LeBron James', 'lebronjames@gmail.com', 'lebron123', '515.189.470-69', 'Rua Lakers, nº 33, Bairro Hollywood', 'Los Angeles', 'California', '90210', '2025-09-21'),
(2, 'Stephen Curry', 'curry30@gmail.com', 'chefcurrry30', '152.852.120-06', 'Avenida Warriors, nº 12, Bairro Golden Gate', 'San Francisco', 'California', '94102', '2025-09-17'),
(3, 'Kevin Durant', 'durantula@gmail.com', 'kd35rules', '635.242.110-54', 'Rua Nets, nº 99, Bairro Brooklyn Ballers', 'Brooklyn', 'New York', '11201', '2025-09-17'),
(4, 'Giannis Antetokounmpo', 'greekfreak@gmail.com', 'bucks34', '968.815.560-80', 'Rua Milwaukee, nº 7, Bairro Wisconsin', 'Milwaukee', 'Wisconsin', '53202', '2025-09-17'),
(5, 'Luka Doncic', 'luka77@gmail.com', 'lukadmagic', '827.535.420-07', 'Avenida Dallas, nº 20, Bairro Mavericks Park', 'Dallas', 'Texas', '75201', '2025-09-17'),
(6, 'Kawhi Leonard', 'kawhileo@gmail.com', 'kawhi2025', '515.935.920-60', 'Rua Clippers, nº 45, Bairro Downtown', 'Los Angeles', 'California', '90015', '2025-09-18'),
(7, 'James Harden', 'jharden@gmail.com', 'beard13', '456.490.720-43', 'Avenida Rockets, nº 88, Bairro Space City', 'Houston', 'Texas', '77002', '2025-09-19'),
(8, 'Damian Lillard', 'dame23@gmail.com', 'ripcity23', '709.557.240-23', 'Rua Blazers, nº 14, Bairro Rose City', 'Portland', 'Oregon', '97205', '2025-09-20'),
(9, 'Joel Embiid', 'joel23@gmail.com', 'trusttheprocess', '885.712.970-53', 'Avenida 76ers, nº 22, Bairro Philly', 'Philadelphia', 'Pennsylvania', '19104', '2025-09-21'),
(10, 'Anthony Davis', 'ad3@gmail.com', 'brow34', '382.753.830-05', 'Rua Pelicans, nº 9, Bairro Big Easy', 'New Orleans', 'Louisiana', '70112', '2025-09-22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `id_itensPedido` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`id_itensPedido`, `id_pedido`, `id_produto`, `quantidade`, `precoUnitario`) VALUES
(1, 1, 1, 2, 350),
(2, 1, 2, 1, 120),
(3, 2, 3, 1, 200),
(4, 2, 4, 2, 75),
(5, 3, 5, 3, 90),
(6, 3, 6, 4, 25),
(7, 4, 7, 1, 180),
(8, 5, 8, 2, 60),
(9, 6, 9, 1, 130),
(10, 7, 10, 1, 250);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `dataPedido` datetime DEFAULT NULL,
  `stats` varchar(15) DEFAULT NULL,
  `valorTotal` double DEFAULT NULL,
  `enderecoEntrega` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `dataPedido`, `stats`, `valorTotal`, `enderecoEntrega`) VALUES
(1, 1, '2025-09-22 14:30:00', 'Em Processament', 350.5, 'Rua Lakers, nº 33, Bairro Hollywood, Los Angeles, CA'),
(2, 3, '2025-09-20 09:15:00', 'Enviado', 420, 'Rua Nets, nº 99, Bairro Brooklyn Ballers, Brooklyn, NY'),
(3, 6, '2025-09-21 16:45:00', 'Entregue', 150.75, 'Avenida Warriors, nº 12, Bairro Golden Gate, San Francisco, CA'),
(4, 8, '2025-09-23 10:00:00', 'Cancelado', 0, 'Rua Milwaukee, nº 7, Bairro Wisconsin, Milwaukee, WI'),
(5, 10, '2025-09-24 12:00:00', 'Em Processament', 275.2, 'Avenida Dallas, nº 20, Bairro Mavericks Park, Dallas, TX'),
(6, 2, '2025-09-25 13:30:00', 'Em Processament', 499.9, 'Avenida Rockets, nº 88, Bairro Space City, Houston, TX'),
(7, 4, '2025-09-26 15:20:00', 'Enviado', 320, 'Rua Milwaukee, nº 7, Bairro Wisconsin, Milwaukee, WI'),
(8, 5, '2025-09-27 11:45:00', 'Entregue', 210.3, 'Avenida Dallas, nº 20, Bairro Mavericks Park, Dallas, TX'),
(9, 7, '2025-09-28 09:10:00', 'Em Processament', 410, 'Rua Clippers, nº 45, Bairro Downtown, Los Angeles, CA'),
(10, 9, '2025-09-29 14:50:00', 'Entregue', 380.75, 'Avenida 76ers, nº 22, Bairro Philly, Philadelphia, PA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `qntdEstoque` int(11) DEFAULT NULL,
  `dataCriacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `descricao`, `preco`, `sku`, `qntdEstoque`, `dataCriacao`) VALUES
(1, 'Tênis de Basquete Air Max', 'Tênis confortável e resistente para jogos de basquete', 350, 'SKU-AIRMAX01', 50, '2025-01-10'),
(2, 'Camiseta Warriors', 'Camiseta oficial do time Golden State Warriors', 120, 'SKU-CAMWARR01', 100, '2025-02-15'),
(3, 'Bola de Basquete Oficial', 'Bola oficial da NBA, tamanho 7', 200, 'SKU-BOLNBA01', 30, '2025-03-20'),
(4, 'Boné Lakers', 'Boné estiloso com logo dos Lakers', 75, 'SKU-BONLAK01', 70, '2025-04-25'),
(5, 'Shorts de Basquete', 'Shorts esportivos para treinos e jogos', 90, 'SKU-SHORTS01', 40, '2025-05-30'),
(6, 'Meias Esportivas', 'Par de meias para uso esportivo', 25, 'SKU-MEIAS01', 150, '2025-06-05'),
(7, 'Mochila Esportiva', 'Mochila resistente para transportar material esportivo', 180, 'SKU-MOCHILA01', 20, '2025-07-12'),
(8, 'Copo Térmico NBA', 'Copo térmico com logo da NBA', 60, 'SKU-COPO01', 80, '2025-08-18'),
(9, 'Camiseta Curry', 'Camiseta oficial do Stephen Curry', 130, 'SKU-CAMCURRY01', 90, '2025-09-01'),
(10, 'Pulseira Fitness', 'Pulseira com monitoramento de atividades físicas', 250, 'SKU-PULSEIRA01', 35, '2025-09-10');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`id_itensPedido`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `id_itensPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
