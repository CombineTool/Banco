SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `atleta` (
  `idatleta` int(11) NOT NULL,
  `nomeAtleta` varchar(45) NOT NULL,
  `idade` int(11) NOT NULL,
  `altura` decimal(10,2) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `atleta`
--

INSERT INTO `atleta` (`idatleta`, `nomeAtleta`, `idade`, `altura`, `peso`, `usuario_idusuario`) VALUES
(1, 'leo', 16, '1.80', '64.00', 1),
(2, 'Erison', 16, '1.79', '52.00', 2),
(3, 'amaro', 17, '1.69', '82.00', 3);


CREATE TABLE `testeBasquete` (
  `idBasquete` int(11) NOT NULL,
  `chute2pt` int(11) NOT NULL,
  `chute3pt` int(11) NOT NULL,
  `bandeja` int(11) NOT NULL,
  `lanceLivre` int(11) NOT NULL,
  `atleta_idatleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `testeBasquete`
--

INSERT INTO `testeBasquete` (`idBasquete`, `chute2pt`, `chute3pt`, `bandeja`, `lanceLivre`, `atleta_idatleta`) VALUES
(1, 2, 0, 2, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `testeFisico`
--

CREATE TABLE `testeFisico` (
  `idFisico` int(11) NOT NULL,
  `saltoParado` decimal(10,2) NOT NULL,
  `saltoMaximo` decimal(10,2) NOT NULL,
  `agilidadeLat` time NOT NULL,
  `lateral` time NOT NULL,
  `tiro` time NOT NULL,
  `atleta_idatleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `testeFisico`
--

INSERT INTO `testeFisico` (`idFisico`, `saltoParado`, `saltoMaximo`, `agilidadeLat`, `lateral`, `tiro`, `atleta_idatleta`) VALUES
(1, '2.20', '2.60', '00:00:12', '00:00:05', '00:00:11', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `testeFutebol`
--

CREATE TABLE `testeFutebol` (
  `idFutebol` int(11) NOT NULL,
  `penalti` int(11) NOT NULL,
  `falta` int(11) NOT NULL,
  `escanteio` int(11) NOT NULL,
  `chute` int(11) NOT NULL,
  `atleta_idatleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `testeFutebol`
--

INSERT INTO `testeFutebol` (`idFutebol`, `penalti`, `falta`, `escanteio`, `chute`, `atleta_idatleta`) VALUES
(1, 5, 3, 5, 4, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `testeVolei`
--

CREATE TABLE `testeVolei` (
  `idVolei` int(11) NOT NULL,
  `saque` int(11) NOT NULL,
  `ataque` int(11) NOT NULL,
  `recepcao` int(11) NOT NULL,
  `levantamento` int(11) NOT NULL,
  `atleta_idatleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `testeVolei`
--

INSERT INTO `testeVolei` (`idVolei`, `saque`, `ataque`, `recepcao`, `levantamento`, `atleta_idatleta`) VALUES
(1, 5, 4, 5, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `CREF` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome`, `email`, `senha`, `CREF`) VALUES
(1, 'IVO', 'ivo.games@gmail.com', 'ivo12345', '12345'),
(2, 'amaro', 'amaro.cunha@gmail.com', '12345carol', '54321'),
(3, 'felipe', 'felipe.amz@gmail.com', 'amz12345', '09876');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`idatleta`),
  ADD KEY `fk_atleta_usuario1_idx` (`usuario_idusuario`);

--
-- Índices de tabela `testeBasquete`
--
ALTER TABLE `testeBasquete`
  ADD PRIMARY KEY (`idBasquete`),
  ADD KEY `fk_testeBasquete_atleta1_idx` (`atleta_idatleta`);

--
-- Índices de tabela `testeFisico`
--
ALTER TABLE `testeFisico`
  ADD PRIMARY KEY (`idFisico`),
  ADD KEY `fk_testeFisico_atleta1_idx` (`atleta_idatleta`);

--
-- Índices de tabela `testeFutebol`
--
ALTER TABLE `testeFutebol`
  ADD PRIMARY KEY (`idFutebol`),
  ADD KEY `fk_testeFutebol_atleta1_idx` (`atleta_idatleta`);

--
-- Índices de tabela `testeVolei`
--
ALTER TABLE `testeVolei`
  ADD PRIMARY KEY (`idVolei`),
  ADD KEY `fk_testeVolei_atleta1_idx` (`atleta_idatleta`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `idatleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `testeBasquete`
--
ALTER TABLE `testeBasquete`
  MODIFY `idBasquete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `testeFisico`
--
ALTER TABLE `testeFisico`
  MODIFY `idFisico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `testeFutebol`
--
ALTER TABLE `testeFutebol`
  MODIFY `idFutebol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `testeVolei`
--
ALTER TABLE `testeVolei`
  MODIFY `idVolei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `fk_atleta_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `testeBasquete`
--
ALTER TABLE `testeBasquete`
  ADD CONSTRAINT `fk_testeBasquete_atleta1` FOREIGN KEY (`atleta_idatleta`) REFERENCES `atleta` (`idatleta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `testeFisico`
--
ALTER TABLE `testeFisico`
  ADD CONSTRAINT `fk_testeFisico_atleta1` FOREIGN KEY (`atleta_idatleta`) REFERENCES `atleta` (`idatleta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `testeFutebol`
--
ALTER TABLE `testeFutebol`
  ADD CONSTRAINT `fk_testeFutebol_atleta1` FOREIGN KEY (`atleta_idatleta`) REFERENCES `atleta` (`idatleta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `testeVolei`
--
ALTER TABLE `testeVolei`
  ADD CONSTRAINT `fk_testeVolei_atleta1` FOREIGN KEY (`atleta_idatleta`) REFERENCES `atleta` (`idatleta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
