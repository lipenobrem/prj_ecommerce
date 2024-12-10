-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/12/2024 às 01:29
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
-- Banco de dados: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `imagem`) VALUES
(1, 'The Legend of Zelda: Breath of the Wild', 'Um jogo de aventura e mundo aberto.', 299.99, 'https://www.akibagamers.it/wp-content/uploads/2017/03/the-legend-of-zelda-breath-of-the-wild-recensione-boxart.jpg'),
(2, 'Super Mario Odyssey', 'Um jogo de plataforma em 3D com Mario.', 249.99, 'https://i5.walmartimages.com/asr/d7b8e344-4f63-4604-a682-1aa5304ef467_1.c17883df305aff3e17098698d1e5331a.jpeg'),
(3, 'God of War', 'A aventura épica de Kratos e Atreus.', 279.99, 'https://assets.reedpopcdn.com/God-of-War-Ragnarok-PS4-UK.jpg'),
(4, 'Spider-Man', 'Um jogo de ação e aventura com o Homem-Aranha.', 229.99, 'https://i5.walmartimages.com/asr/bdd6bf32-055c-4968-bcb6-b79583eca9d4_3.173007fb384b0b625dd2ca735fe83955.png'),
(5, 'Final Fantasy VII Remake', 'Remake do clássico RPG.', 349.99, 'https://gamescenter.pe/wp-content/uploads/2020/04/FF7R.jpg'),
(6, 'The Last of Us Part II Remasterd', 'A continuação da jornada de Ellie.', 279.99, 'https://omegagame.ru/upload/iblock/4d3/ijpckeuxa3jo5j113j6hu9k4d8mupjdh.png'),
(7, 'Horizon Zero Dawn', 'Um jogo de ação e RPG em um mundo pós-apocalíptico.', 239.99, 'https://www.gematsu.com/wp-content/uploads/2017/10/Horizon-Zero-Dawn-Complete-Ann_10-04-17.jpg'),
(8, 'Resident Evil 2 Remake', 'Um remake do clássico jogo de terror.', 259.99, 'https://i2.wp.com/operationrainfall.com/wp-content/uploads/2019/01/re-2-remake-deluxe-ps4-cover.jpg'),
(9, 'Red Dead Redemption 2', 'Uma história épica do Velho Oeste.', 349.99, 'https://images-na.ssl-images-amazon.com/images/I/81t5bLJJ5DL._SL1500_.jpg'),
(10, 'A Plague Tale: Innocence', 'Uma emocionante jornada de sobrevivência.', 199.99, 'https://thegamehoard.com/wp-content/uploads/2020/01/a-plague-tale-innocence.png'),
(11, 'FIFA 21', 'O mais recente jogo de futebol da EA Sports.', 249.99, 'https://www.sector.sk/files/novinky/0/2020/7-22-17-24-58/fifa-21-uz-ma-cover-art-image-700.jpg'),
(12, 'Call of Duty: Modern Warfare 2', 'Um jogo de tiro em primeira pessoa.', 269.99, 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/10/Call-of-Duty-MWII-Game-Poster.jpg'),
(13, 'Assassin’s Creed Valhalla', 'Explore a era dos vikings.', 299.99, 'https://media.gamestop.com/i/gamestop/11102094/Assassins-Creed-Valhalla---Xbox-One'),
(14, 'Battlefield V', 'A batalha épica da Segunda Guerra Mundial.', 239.99, 'https://cdn.wikimg.net/en/strategywiki/images/9/94/Battlefield_V_cover.jpg'),
(15, 'Mortal Kombat 11', 'Lute em uma das melhores franquias de luta.', 249.99, 'https://m.media-amazon.com/images/I/91je8CYYQEL.jpg'),
(16, 'Doom Eternal', 'Um jogo de tiro em primeira pessoa cheio de ação.', 229.99, 'https://db.hfsplay.fr/files/2020/03/30/doom-eternal-cover_NlDBQcV.jpg'),
(17, 'Ghost of Tsushima', 'Uma aventura samurai no Japão feudal.', 299.99, 'https://images.tcdn.com.br/img/img_prod/684553/ghost_of_tsushima_ps4_1305_1_4c58c6431b82f3482eedad9ea4402363.jpg'),
(18, 'NBA 2K21', 'O mais recente jogo de basquete.', 249.99, 'https://mlpnk72yciwc.i.optimole.com/cqhiHLc.WqA8~2eefa/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2020/07/NBA-2K21-Mamba-Forever-Edition-Next-Gen-Cover.jpg'),
(19, 'Gran Turismo 7', 'O jogo de corrida mais realista.', 299.99, 'https://tse1.mm.bing.net/th?id=OIP.sa2QVMoV6afE1pOAL-cSgwHaLH&pid=Api&P=0&h=180'),
(20, 'Ratchet & Clank: Rift Apart', 'Uma aventura intergaláctica.', 249.99, 'https://www.giantbomb.com/a/uploads/original/33/338034/3287020-9505782158-CrGbG.jpg'),
(21, 'Death Stranding', 'Uma experiência única de jogo.', 269.99, 'https://tse3.mm.bing.net/th?id=OIP.O29oJouxsO_A1wklXGK_BgHaLe&pid=Api&P=0&h=180'),
(22, 'Cyberpunk 2077', 'Explore um mundo futurista em Night City.', 299.99, 'https://i5.walmartimages.com/seo/Cyberpunk-2077-Day-One-Edition-Ps4-Ps4_5336af3f-32f7-431e-9fbb-4fc757de5d90.ca3149675b4e6d6e53a58823ee8d88ae.jpeg?odnHeight=580&odnWidth=580&odnBg=FFFFFF'),
(23, 'Sekiro: Shadows Die Twice', 'Uma aventura desafiadora no Japão feudal.', 249.99, 'https://tse3.mm.bing.net/th?id=OIP.RS-YwWpx-YDO334b5Yvu-QHaLH&pid=Api&P=0&h=180'),
(24, 'Monster Hunter: World', 'Hunt gigantic monstros em um mundo vibrante.', 219.99, 'https://www.mobygames.com/images/covers/l/452375-monster-hunter-world-playstation-4-front-cover.png'),
(25, 'Overwatch', 'Um jogo de tiro em equipe multijogador.', 199.99, 'https://http2.mlstatic.com/D_NQ_NP_2X_697979-MLB31029293191_062019-F.jpg'),
(26, 'Street Fighter V: Champions Edition', 'O clássico jogo de luta.', 199.99, 'https://tse2.mm.bing.net/th?id=OIP.4CSXl-FkACaFWpIILbEQ9AHaIQ&pid=Api&P=0&h=180'),
(27, 'ARK: Survival Evolved', 'Sobreviva em um mundo cheio de dinossauros.', 229.99, 'https://m.media-amazon.com/images/M/MV5BMzVjZjE4MDktZThiYi00NDI0LWEyYTUtYjYzYmFjOWEwZTQ4XkEyXkFqcGdeQXVyNzg3NjQyOQ@@._V1_FMjpg_UX1000_.jpg'),
(28, 'FIFA 20', 'O clássico jogo de futebol da EA Sports.', 229.99, 'https://tse1.mm.bing.net/th?id=OIP.3hgpeEjFIbhqI8o2AnuhYAHaJM&pid=Api&P=0&h=180'),
(29, 'The Witcher 3: Wild Hunt', 'Uma das melhores histórias em jogos.', 299.99, 'https://tse1.mm.bing.net/th?id=OIP.IZJG3Fmkty6IceXtCpkD0QHaHa&pid=Api&P=0&h=180'),
(30, 'Hollow Knight', 'Uma aventura de plataforma desafiadora.', 149.99, 'https://tse3.mm.bing.net/th?id=OIP.yksrDyeoiGInEdKYFyreeQHaHa&pid=Api&P=0&h=180'),
(31, 'Cuphead', 'Um jogo de plataforma com estilo vintage.', 139.99, 'https://tse1.mm.bing.net/th?id=OIP.2kr_v4eJMfwkrsojxVWm3QHaHa&pid=Api&P=0&h=180'),
(32, 'The Legend of Zelda: Ocarina of Time', 'Um clássico que revolucionou os jogos de aventura.', 249.99, 'https://posterspy.com/wp-content/uploads/2020/11/ocarina_web.jpg'),
(33, 'Super Mario 64', 'O primeiro jogo 3D do Mario.', 199.99, 'https://tse1.mm.bing.net/th?id=OIP.GIRWHJpDr0LeW61KWgufVQHaKw&pid=Api&P=0&h=180'),
(34, 'Mega Man 11', 'O retorno do clássico personagem.', 149.99, 'https://tse3.mm.bing.net/th?id=OIP.VZpEaQ_uVnZ48Pdx3a9YvwHaLI&pid=Api&P=0&h=180'),
(35, 'Sonic Mania', 'Uma volta aos clássicos do Sonic.', 139.99, 'https://tse1.mm.bing.net/th?id=OIP.W03YorFUJXyCrIqjcCEwEAHaIO&pid=Api&P=0&h=180'),
(36, 'Street Fighter II', 'O clássico dos clássicos dos jogos de luta.', 149.99, 'https://example.com/streetfighter2.jpg'),
(37, 'Donkey Kong Country', 'Um clássico dos jogos de plataforma.', 149.99, 'https://tse3.mm.bing.net/th?id=OIP.d8DUstNw81LIAuXI03CrsQHaHa&pid=Api&P=0&h=180'),
(38, 'Super Metroid', 'Um dos melhores jogos da franquia Metroid.', 199.99, 'https://tse4.mm.bing.net/th?id=OIP.9dnmRkp1y-IN1sYJCHqVNAHaKN&pid=Api&P=0&h=180'),
(39, 'Pokemon Red', 'O jogo que deu início à franquia Pokémon.', 199.99, 'https://tse4.explicit.bing.net/th?id=OIP.rVTno0a9x7OxEcEtIp3oLwHaGo&pid=Api&P=0&h=180'),
(40, 'The Legend of Zelda: Link to the Past', 'Uma das melhores sequências do Zelda.', 199.99, 'https://example.com/zelda3.jpg'),
(41, 'Chrono Trigger', 'Um RPG que estabeleceu o padrão para o gênero.', 199.99, 'https://tse1.mm.bing.net/th?id=OIP.Y_Z_bzcqt57VAAzVJUSkOwHaKZ&pid=Api&P=0&h=180'),
(42, 'Half-Life 2', 'Um dos melhores jogos de tiro em primeira pessoa.', 199.99, 'https://www.gamespot.com/a/uploads/scale_medium/box/5/4/5/7/34479-95457.jpg'),
(43, 'The Elder Scrolls V: Skyrim', 'Um RPG de mundo aberto sem igual.', 249.99, 'https://tse1.mm.bing.net/th?id=OIP.XFfg8gSidF8MN52H6-hvywHaJd&pid=Api&P=0&h=180'),
(44, 'Dark Souls', 'Um RPG desafiador que redefiniu o gênero.', 249.99, 'https://tse2.mm.bing.net/th?id=OIP.kh0uFGjnAZsGJtbRtnVhQwHaJJ&pid=Api&P=0&h=180'),
(45, 'PlayStation 5', 'Console de nova geração da Sony.', 4999.99, 'https://tse2.mm.bing.net/th?id=OIP.H-USL9HTpq35kWW7BBxRdQHaDv&pid=Api&P=0&h=180'),
(46, 'Xbox Series X', 'Console de nova geração da Microsoft.', 4999.99, 'https://tse1.mm.bing.net/th?id=OIP.mi_j59klJYF29uqSAmI2AwHaHa&pid=Api&P=0&h=180'),
(47, 'Nintendo Switch', 'Console híbrido da Nintendo.', 2999.99, 'https://tse1.mm.bing.net/th?id=OIP.co75BLl2KsBrtuzDUL1U0AHaEy&pid=Api&P=0&h=180'),
(48, 'PlayStation 4', 'Console de última geração.', 2999.99, 'https://cdn.gameplanet.com/wp-content/uploads/2022/09/02211418/consola-playstation-4-slim-negro-megapack-7.jpg'),
(49, 'Xbox One s', 'Console da Microsoft com excelente biblioteca de jogos.', 1999.99, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6375/6375659cv12d.jpg'),
(50, 'Sega Genesis', 'Console retrô com clássicos atemporais.', 699.99, 'https://sm.ign.com/t/ign_br/gallery/s/sega-genes/sega-genesis-flashback-console-from-atgames_8qpv.1200.jpg'),
(51, 'Super Nintendo', 'Um dos melhores consoles da história.', 799.99, 'https://i5.walmartimages.com/asr/ba50f7d9-9c60-45af-99cf-4ab6b390d299_1.cece2807399bfcdc42572e6d8f28452c.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff'),
(52, 'Nintendo 64', 'Console 3D que trouxe Mario para o mundo.', 899.99, 'https://tse1.mm.bing.net/th?id=OIP.XBhp1v-zhmVkDsdPXu62mwHaE6&pid=Api&P=0&h=180'),
(53, 'PlayStation 3', 'Console com grandes jogos e exclusividades.', 1999.99, 'https://tse1.mm.bing.net/th?id=OIP.8peKo1GPtCJE4Q_7_DsEDAHaIh&pid=Api&P=0&h=180'),
(54, 'Xbox 360', 'Console popular com uma vasta biblioteca de jogos.', 1499.99, 'https://tse2.mm.bing.net/th?id=OIP.IF2jwGI0Hy_-cEE3jRn2aQHaHa&pid=Api&P=0&h=180'),
(55, 'Controle DualSense', 'Controle para PlayStation 5.', 499.99, 'https://tse3.mm.bing.net/th?id=OIP.mKxLhvMvbN66Gqs4_-1DRwHaG6&pid=Api&P=0&h=180'),
(56, 'Controle Xbox Elite', 'Controle de alta qualidade para Xbox.', 699.99, 'https://http2.mlstatic.com/D_NQ_NP_768940-MLA51696743563_092022-W.jpg'),
(57, 'Nintendo Switch Pro Controller', 'Controle pro para Nintendo Switch.', 399.99, 'https://images-na.ssl-images-amazon.com/images/I/71bKJbGQHJL._AC_SL1309_.jpg'),
(58, 'Headset Razer Kraken V3', 'Headset gamer confortável.', 299.99, 'https://tse2.mm.bing.net/th?id=OIP.csMKl3_l223-AQQ6ENnLjgHaHa&pid=Api&P=0&h=180'),
(59, 'Teclado Mecânico Logitech', 'Teclado mecânico gamer.', 599.99, 'https://tse1.mm.bing.net/th?id=OIP.AjJpb5XGcCVB_b9iPs2LbwHaHa&pid=Api&P=0&h=180'),
(60, 'Mouse Gamer Razer', 'Mouse gamer de alta precisão.', 299.99, 'https://tse4.mm.bing.net/th?id=OIP.yKipdDGZam4XfRhTJCCPbwHaHa&pid=Api&P=0&h=180g'),
(61, 'Webcam Logitech', 'Webcam com alta definição.', 199.99, 'https://oechsle.vteximg.com.br/arquivos/ids/8818802-1000-1000/imageUrl_1.jpg?v=637889396899530000'),
(62, 'Câmera Capture Elgato', 'Câmera para streaming.', 499.99, 'https://tse2.mm.bing.net/th?id=OIP.F9DCzn256iNkUp03oCL63gHaHa&pid=Api&P=0&h=180'),
(63, 'Fones de Ouvido Sem Fio JBL', 'Fones de ouvido bluetooth.', 199.99, 'https://a-static.mlcdn.com.br/1500x1500/fone-de-ouvido-bluetooth-sem-fio-jbl-free-x-preto/techshop/fnejbl00025/6a2264967c16a9b191cfbbcade88b124.jpg'),
(64, 'Console Retro Sega Genesis Mini', 'Console retro em miniatura.', 499.99, 'https://tse4.mm.bing.net/th?id=OIP.IoSQrLnKNq9SgRvqyhRcvwHaFi&pid=Api&P=0&h=180');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
