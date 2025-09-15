-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:48
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
  `observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacao`) VALUES
(1, 2, 4, '2025-09-10 14:30:00', 'Paciente relatou dores'),
(2, 5, 1, '2025-09-12 09:00:00', 'Consulta de rotina'),
(3, 7, 9, '2025-09-14 11:15:00', 'Rotina'),
(4, 3, 6, '2025-09-13 16:45:00', 'Consulta odontológica'),
(5, 1, 1, '2025-09-15 10:00:00', 'Acompanhamento urológico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Juan Carlos', 'Urologista', '777-666', 'CRM1234'),
(2, 'Dra. Ana lima', 'Pediatra', '1010-0808', 'CRM1456'),
(3, 'Dra. Renan Takeshi Hiramatsua', 'Dermatologista', '1515-6969', 'CRM6969'),
(4, 'Dra. Mariana Iura', 'Ginecologista', '0000-0001', 'CRM2222'),
(5, 'Dr. Ronaldo', 'Coloproctologista', '7787-6656', 'CRM5155'),
(6, 'Dra. Pepe', 'Dentista', '1915-0238', 'CRM1156'),
(7, 'Dra. Giovanna Iura', 'Dentista', '0300-1501', 'CRM2632'),
(8, 'Dra. Lia Iura', 'Ginecologista', '2025-3101', 'CRM2532'),
(9, 'Dr. Giula Cintra', 'Oftalmologista', '637-866', 'CRM1154'),
(10, 'Dra. Lucas Cinta', 'Ortopedista', '1810-0912', 'CRM0926');

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
(1, 'Carlos Henrique da Silva', '1990-03-15', '1199887766', 'Rua das Flores, 123', '04567-000', 'carlos.silva@email.com'),
(2, 'Fernanda Alves Costa', '1985-07-22', '11991234567', 'Av. Paulista, 1000', '01310-100', 'fernanda.costa@email.com'),
(3, 'João Pedro Martins', '2001-11-02', '11997654321', 'Rua do Sol, 45', '02045-000', 'joao.martins@email.com'),
(4, 'Mariana Rocha Lima', '1993-04-08', '11990011223', 'Rua da Paz, 789', '04012-080', 'mariana.lima@email.com'),
(5, 'Lucas Ribeiro Andrade', '1988-12-30', '11993335544', 'Av. Liberdade, 321', '01503-001', 'lucas.andrade@email.com'),
(6, 'Ana Clara Fernandes', '1996-06-14', '11991112233', 'Rua do Carmo, 56', '01012-030', 'ana.fernandes@email.com'),
(7, 'Ricardo Lopes Pereira', '1979-09-19', '11992223344', 'Rua das Acácias, 12', '04812-400', 'ricardo.pereira@email.com'),
(8, 'Beatriz Moura Souza', '1994-01-25', '11998889977', 'Av. Brasil, 999', '02030-000', 'beatriz.souza@email.com'),
(9, 'Thiago Moreira Pinto', '1992-05-17', '11994445566', 'Rua Nova, 404', '03045-010', 'thiago.pinto@email.com'),
(10, 'Larissa Gomes Duarte', '2000-10-10', '11990001122', 'Rua Bela Vista, 77', '05012-200', 'larissa.duarte@email.com');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
