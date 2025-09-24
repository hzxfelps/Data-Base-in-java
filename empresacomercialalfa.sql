-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 18:26
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
-- Banco de dados: `comercial_alfa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(10) NOT NULL,
  `nome_fornecedor` text NOT NULL,
  `cnpj` text NOT NULL,
  `telefone` text NOT NULL,
  `cidade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `nome_fornecedor`, `cnpj`, `telefone`, `cidade`) VALUES
(1, 'Vinicius', '1', '1511111-1111', 'Jacobina'),
(2, 'Pedro', '', '1522222-22222', 'Manaus'),
(3, 'Felipe', '1', '1533333-3333', 'São Paulo'),
(4, 'Giulia', '1', '1544444-4444', 'Rio de Janeiro'),
(5, 'Anna', '1', '1555555-5555', 'Sorocaba');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `valor_compra` double NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `data_pedido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `valor_compra`, `id_fornecedor`, `id_produto`, `data_pedido`) VALUES
(1, 200, 1, 1, '2025-02-09'),
(2, 300, 2, 2, '2001-09-11'),
(3, 10, 3, 3, '2005-11-09'),
(4, 5200, 4, 4, '2014-06-30'),
(5, 700, 5, 5, '2025-09-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(10) NOT NULL,
  `nome_produto` text NOT NULL,
  `preco_unitario` double NOT NULL,
  `categoria` text NOT NULL,
  `quantidade_estoque` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `preco_unitario`, `categoria`, `quantidade_estoque`) VALUES
(1, 'Telefone', 500, 'Eletrônicos', 10),
(2, 'Microondas', 200, 'Eletrodomésticos', 10),
(3, 'Corda', 10, 'Utilidades', 2),
(4, 'Panela', 40, 'Itens de Cozinha', 12),
(5, 'Camiseta', 21, 'Vestimentas', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_fornecedor` (`id_fornecedor`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
