-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jun-2020 às 13:32
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadoraVirtual`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `administradores_id` int(11) NOT NULL,
  `administradores_nome` varchar(100) DEFAULT NULL,
  `administradores_login` varchar(50) DEFAULT NULL,
  `administradores_senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`administradores_id`, `administradores_nome`, `administradores_login`, `administradores_senha`) VALUES
(30, 'Hercules Alves da Silva', 'hercules', '123'),
(31, 'Alex Oliveira', 'oliveira', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_slug` varchar(100) DEFAULT NULL,
  `banners_filme` int(11) DEFAULT NULL,
  `banners_caminho` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_slug`, `banners_filme`, `banners_caminho`) VALUES
(20, '300', 25, 'fotos/banners/503d02d2cae4a.jpg'),
(21, 'sexta-feira-13', 24, 'fotos/banners/503ec70c2cb74.jpg'),
(22, 'harry-potter', 28, 'fotos/banners/503ec86d36b15.jpg'),
(23, 'salt', 35, 'fotos/banners/503f6cccc8feb.jpg'),
(24, 'livro-de-eli', 27, 'fotos/banners/503f6de172f73.jpg'),
(25, 'os-vingadores', 38, 'fotos/banners/503f721729a11.jpg'),
(26, 'o-juiz', 39, 'fotos/banners/504578ba2a95a.jpg'),
(27, 'jovens-pistoleiros', 49, 'fotos/banners/5077085122012.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categorias_id` int(11) NOT NULL,
  `categorias_nome` varchar(50) DEFAULT NULL,
  `categorias_slug` varchar(100) DEFAULT NULL,
  `categorias_link` varchar(200) DEFAULT NULL,
  `categorias_visivel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categorias_id`, `categorias_nome`, `categorias_slug`, `categorias_link`, `categorias_visivel`) VALUES
(7, 'AÃ§Ã£o', 'acao', 'http://netfilmes.com.br/categoria/acao', 'habilitado'),
(8, 'FicÃ§Ã£o', 'ficcao', 'http://netfilmes.com.br/categoria/ficcao', 'habilitado'),
(9, 'Aventura', 'aventura', 'http://netfilmes.com.br/categoria/aventura', 'habilitado'),
(10, 'Terror', 'terror', 'http://netfilmes.com.br/categoria/terror', 'habilitado'),
(12, 'Drama', 'drama', 'http://netfilmes.com.br/categoria/drama', 'habilitado'),
(13, 'ComÃ©dia', 'comedia', 'http://netfilmes.com.br/categoria/comedia', 'habilitado'),
(14, 'Suspense', 'suspense', 'http://netfilmes.com.br/categoria/suspense', 'habilitado'),
(15, 'Romance', 'romance', 'http://netfilmes.com.br/categoria/romance', 'habilitado'),
(16, 'Policial', 'policial', 'http://netfilmes.com.br/categoria/policial', 'habilitado'),
(17, 'Religioso', 'religioso', 'http://netfilmes.com.br/categoria/religioso', 'habilitado'),
(18, 'Nacional', 'nacional', 'http://netfilmes.com.br/categoria/nacional', 'habilitado'),
(19, 'Faroeste', 'faroeste', 'http://netfilmes.com.br/categoria/faroeste', 'habilitado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `clientes_id` int(11) NOT NULL,
  `clientes_nome` varchar(100) DEFAULT NULL,
  `clientes_email` varchar(50) DEFAULT NULL,
  `clientes_cidade` varchar(50) DEFAULT NULL,
  `clientes_telefone` varchar(16) DEFAULT NULL,
  `clientes_celular` varchar(16) DEFAULT NULL,
  `clientes_cpf` varchar(16) DEFAULT NULL,
  `clientes_newsletter` char(3) DEFAULT NULL,
  `clientes_foto` varchar(100) DEFAULT NULL,
  `clientes_foto_detalhes` varchar(100) DEFAULT NULL,
  `clientes_login` varchar(100) DEFAULT NULL,
  `clientes_senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`clientes_id`, `clientes_nome`, `clientes_email`, `clientes_cidade`, `clientes_telefone`, `clientes_celular`, `clientes_cpf`, `clientes_newsletter`, `clientes_foto`, `clientes_foto_detalhes`, `clientes_login`, `clientes_senha`) VALUES
(20, 'Hercules Alves da Silva', 'juliocesar@gmail.com', 'Belem', '7633456714', '(56)9856-7325', '66366866548', 'sim', 'fotos/clientes/sem_foto.jpg', 'fotos/clientes/detalhes/sem_foto.jpg', 'alex', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `comentarios_id` int(11) NOT NULL,
  `comentarios_cliente` int(11) DEFAULT NULL,
  `comentarios_filme` int(11) DEFAULT NULL,
  `comentarios_data` timestamp NULL DEFAULT NULL,
  `comentarios_texto` text DEFAULT NULL,
  `comentarios_aprovado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `contato_id` int(11) NOT NULL,
  `contato_nome` varchar(50) DEFAULT NULL,
  `contato_email` varchar(100) DEFAULT NULL,
  `contato_telefone` varchar(20) DEFAULT NULL,
  `contato_assunto` varchar(50) DEFAULT NULL,
  `contato_mensagem` text DEFAULT NULL,
  `contato_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `filmes_id` int(11) NOT NULL,
  `filmes_categoria` int(11) DEFAULT NULL,
  `filmes_nome` varchar(50) DEFAULT NULL,
  `filmes_preco` decimal(10,2) DEFAULT NULL,
  `filmes_slug` varchar(100) DEFAULT NULL,
  `filmes_lancamento` char(3) DEFAULT NULL,
  `filmes_recomendo` char(3) DEFAULT NULL,
  `filmes_foto` varchar(100) DEFAULT NULL,
  `filmes_foto_descricao` varchar(100) DEFAULT NULL,
  `filmes_descricao` text DEFAULT NULL,
  `filmes_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`filmes_id`, `filmes_categoria`, `filmes_nome`, `filmes_preco`, `filmes_slug`, `filmes_lancamento`, `filmes_recomendo`, `filmes_foto`, `filmes_foto_descricao`, `filmes_descricao`, `filmes_codigo`) VALUES
(24, 10, 'Sexta-feira 13', '4.00', 'sexta-feira-13', 'sim', 'sim', 'fotos/site/503829242b20b.jpg', 'fotos/descricao/503829242b20b.jpg', '<p>Clay (Jared Padalecki) vai &agrave; misteriosa floresta de Crystal Lake, em busca de sua irm&atilde; desaparecida. L&aacute; ele encontra restos de velhas cabanas, aparentemente abandonadas.<br /><br /> Apesar de ser avisado pelos oficiais e habitantes locais, ele resolve explorar o local juntamente com uma jovem, que est&aacute; em um grupo que se formou para passar um final de semana de aventuras. O que eles n&atilde;o esperavam era encontrar Jason Voorhess (Derek Mears), o assassino da m&aacute;scara de h&oacute;quei.</p>\r\n<div id=\"trailers\"><iframe src=\"http://www.youtube.com/embed/47M5O3YT5Qs\" frameborder=\"0\" width=\"435\" height=\"326\"></iframe></div>', 1254),
(25, 7, '300', '5.00', '300', 'sim', 'sim', 'fotos/site/503aae3ad46ea.jpg', 'fotos/descricao/503aae3ad46ea.jpg', '<p>O filme come&ccedil;a com um orador espartano a contar a vida do jovem rei <span class=\"\\&quot;\\\\\">Le&oacute;nidas I</span>, revelando tamb&eacute;m o rigor e a disciplina a que foi submetido durante a sua inf&acirc;ncia. Aos sete anos, &eacute; tirado da sua m&atilde;e para iniciar o agog&ecirc; - um per&iacute;odo de priva&ccedil;&otilde;es a que todos os cidad&atilde;os de Esparta s&atilde;o submetidos.<br /><br /></p>\r\n<p>Passados trinta anos, o orador conta que um mensageiro <span class=\"\\&quot;\\\\\">persa</span> chega a Esparta e comunica-lhe o desejo de Xerxes em dominar a regi&atilde;o - atrav&eacute;s de um pedido aparentemente inocente de \"terra e &aacute;gua\". Le&oacute;nidas, ofendido com tal mensagem, mata toda a comitiva persa e decide come&ccedil;ar uma guerra com Xerxes. Como Esparta estava a celebrar a festa religiosa da Carneia, Le&oacute;nidas n&atilde;o poderia entrar em guerra, ent&atilde;o ele pega 300 homens de sua guarda pessoal e diz que vai dar um passeio - e marcha ao encontro dos invasores persas.</p>\r\n<div id=\"trailers\"><iframe src=\"http://www.youtube.com/embed/lpu20fZBktw\" frameborder=\"0\" width=\"435\" height=\"326\"></iframe></div>', 54655654),
(27, 9, 'O livro de eli', '5.00', 'livro-de-eli', 'nao', 'sim', 'fotos/site/503aaeb2ed4a2.jpg', 'fotos/descricao/503aaeb2ed4a2.jpg', 'descri&ccedil;&atilde;o do filme livro de eli', 561623),
(28, 8, 'Harry-Potter', '4.50', 'harry-potter', 'nao', 'sim', 'fotos/site/503cf55164b17.jpg', 'fotos/descricao/503cf55164b17.jpg', '<p>A hist&oacute;ria come&ccedil;a com o mundo dos bruxos, que tenta manter-se secreto dos Muggles - termo traduzido para o Brasil como \"Trouxas\" (aqueles que n&atilde;o s&atilde;o bruxos). Por muitos anos este mundo foi aterrorizado por <span class=\"mw-redirect\">Lord Voldemort</span> (Tom Servolo Riddle). Na noite da sua queda, Voldemort encontrou o esconderijo da fam&iacute;lia Potter, e matou Lilly e James Potter (L&iacute;lian e Tiago Potter, no Brasil).<br /><br /> Entretanto, quando voltou sua varinha contra o beb&ecirc; dos Potter, Harry, o seu feiti&ccedil;o voltou-se contra ele. Voldemort s&oacute; n&atilde;o morreu por causa de suas Horcruxes, por&eacute;m com o corpo destru&iacute;do, Voldemort tornou-se um esp&iacute;rito sem poder, procurando ref&uacute;gio em lugares escondidos do mundo; Harry, enquanto isso, foi deixado com uma cicatriz em forma de raio em sua testa, o &uacute;nico sinal f&iacute;sico da maldi&ccedil;&atilde;o de Voldemort. Harry tornou-se conhecido como \"O Menino que Sobreviveu\" no mundo dos feiticeiros, por ter sido o &uacute;nico a sobreviver a maldi&ccedil;&atilde;o da morte e por ter derrotado Lord Voldemort.<br /><br /></p>\r\n<p>Em seguida, o &oacute;rf&atilde;o Harry Potter &eacute; criado pelos seus tios, os <span class=\"mw-redirect\">Trouxas</span> Dursley. Por&eacute;m, quando o seu anivers&aacute;rio de onze anos se aproxima, Harry tem seu primeiro contato com o mundo m&aacute;gico quando recebe cartas da <span class=\"mw-redirect\">Escola de Magia e Bruxaria de Hogwarts</span>, que s&atilde;o roubadas pelos tios antes que ele possa l&ecirc;-las. No seu d&eacute;cimo primeiro anivers&aacute;rio, Harry &eacute; informado por Hagrid, o guarda-ca&ccedil;as de Hogwarts, que ele &eacute; um bruxo e por isso tem uma vaga na Escola de Magia e Bruxaria de Hogwarts.<br /><br /></p>\r\n<p>Cada livro registra uma ano da vida de Harry em Hogwarts, onde ele aprende a usar e controlar a magia e a fazer <span class=\"mw-redirect\">po&ccedil;&otilde;es</span>. Harry tamb&eacute;m aprende a ultrapassar muitos obst&aacute;culos m&aacute;gicos, sociais e emocionais que enfrenta em sua adolesc&ecirc;ncia e na segunda tentativa de ascens&atilde;o de Voldemort ao poder.</p>', 51655),
(29, 9, 'Anjos da Noite', '4.50', 'anjos-da-noite', 'sim', 'sim', 'fotos/site/503d801ad9a21.jpg', 'fotos/descricao/503d801ad9a21.jpg', '<p>Os lycans (lobisomens) e vampiros vivem espalhados e n&atilde;o solit&aacute;rios, como s&atilde;o retratados costumeiramente. Essas mesmas ra&ccedil;as vivem em constantes conflitos, apesar dos lycans estarem em menor n&uacute;mero por serem ca&ccedil;ados pelos \\\"vampiros\\\". <br /><br />Uma dessas ca&ccedil;adoras &eacute; Selene (Kate Beckinsale), que os mata como vingan&ccedil;a pelo que fizeram supostamente &agrave; sua fam&iacute;lia. Apesar da guerra ter sido terminada h&aacute; muitos anos, as batalhas continuaram. &nbsp;<br /><br /> A vampira Selene resolve investigar seus inimigos imortais e descobre que eles est&atilde;o atr&aacute;s de um m&eacute;dico humano, Michael Corvin (Scott Speedman), assim ela tamb&eacute;m desconfia que Kraven (Shane Brolly), o atual comandante do Coven dos vampiros, esteja planejando uma conspira&ccedil;&atilde;o com Lucian (Michael Sheen), l&iacute;der dos lycans, contra Viktor (Bill Nighy) o verdadeiro comandante do Coven que est&aacute; em hiberna&ccedil;&atilde;o. &nbsp; <br /><br />Al&eacute;m desse principal conflito, aparece o tri&acirc;ngulo amoroso dos vampiros, como a ambi&ccedil;&atilde;o de Erika (Sophia Myles) por Kraven, querendo ser sua rainha e ter poder no Coven, mas infelizmente ela fica para tr&aacute;s pois ele &eacute; obcecado por Selene, que o rejeita e acaba se apaixonando pelo m&eacute;dico humano.</p>', 123456789),
(30, 9, 'FÃºria de TitÃ£s', '4.50', 'furia-de-titas', 'sim', 'sim', 'fotos/site/503d807d311a3.JPG', 'fotos/descricao/503d807d311a3.JPG', 'descricao do filme furia de titas', 456897),
(31, 9, 'Encontro Explosivo', '4.50', 'encontro-explosivo', 'nao', 'nao', 'fotos/site/503d80a6e3a94.jpg', 'fotos/descricao/503d80a6e3a94.jpg', 'descri&ccedil;&atilde;o do filme encontro explosivo', 5165165),
(32, 14, 'O padrasto', '4.50', 'o-padrasto', 'nao', 'nao', 'fotos/site/503e20c6f0d02.jpg', 'fotos/descricao/503e20c6f0d02.jpg', '<p><span style=\\\"color: #000000; font-family: Verdana; font-size: small;\\\">Quando Michael Harding volta para casa do col&eacute;gio militar, ele encontra sua m&atilde;e totalmente apaixonada por seu charmoso namorado David. </span></p>\r\n<p><span style=\\\"color: #000000; font-family: Verdana; font-size: small;\\\">&nbsp;</span></p>\r\n<p><span style=\\\"color: #000000; font-family: Verdana; font-size: small;\\\">A princ&iacute;pio, David parece ser um cara muito legal, um &oacute;timo futuro esposo, o padrasto ideal. Mas quando Michael e sua namorada come&ccedil;am a investigar o passado de David, eles come&ccedil;am a descobrir um lado negro e perigoso do novo \\\"papai\\\" de Michael, neste suspense absorvente e eletrizante.</span></p>', 456234),
(33, 10, 'Terror na Antartida', '3.50', 'terror-antartida', 'sim', 'nao', 'fotos/site/503e211323044.jpg', 'fotos/descricao/503e211323044.jpg', '<p><span>Para a agente federal americana Carrie Stetko, as coisas est&atilde;o para ficar ainda mais perigosas. Sendo a &uacute;nica representante da lei nesse territ&oacute;rio cruel, ela acaba de ser enviada para investigar um corpo encontrado no gelo.</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<p><span> O primeiro homic&iacute;dio da Ant&aacute;rtida. Uma descoberta chocante que vai lev&aacute;-la a um mist&eacute;rio ainda mais estranho e &agrave; revela&ccedil;&atilde;o de segredos h&aacute; muito enterrados no gelo infinito... segredos pelos quais algu&eacute;m acredita que vale a pena matar. </span></p>\r\n<p><span>Enquanto Carrie se apressa a encontrar o assassino antes que ele a encontre, o inverno est&aacute; apertando. No terr&iacute;vel territ&oacute;rio gelado da Ant&aacute;rtida, Carrie s&oacute; vai v&ecirc;-lo quando ele estiver perto demais.</span></p>', 456982),
(34, 7, 'O Predador', '4.50', 'o-predador', 'sim', 'sim', 'fotos/site/503e218b07e3d.jpg', 'fotos/descricao/503e218b07e3d.jpg', '<p><span>O major Alan \\\"Dutch\\\" Schaefer (Arnold Schwarzenegger) lidera uma equipe de resgate em uma selva da Am&eacute;rica Central, para tentar encontrar um ministro estrangeiro e funcion&aacute;rios do governo que sa&iacute;ram da rota e se perderam.<br /><br />O ex&eacute;rcito acredita que eles estejam nas m&atilde;os de guerrilheiros, mas o que eles n&atilde;o imaginam &eacute; que a floresta esconde uma amea&ccedil;a mortal, um ser de outro planeta, fortemente armado, que sente enorme prazer em matar.</span></p>', 16865236),
(35, 7, 'Salt', '4.50', 'salt', 'nao', 'sim', 'fotos/site/503e22db242cc.jpg', 'fotos/descricao/503e22db242cc.jpg', '<p><span>Angelina Jolie estrela Salt da Columbia Pictures, um moderno suspense de espionagem. Antes de se tornar agente da CIA, Evelyn Salt (Jolie) prestou juramento de servir e honrar o seu pa&iacute;s. <br /><br />Ela colocar&aacute; o seu juramento em pr&aacute;tica, quando um desertor russo a acusa de ser uma espi&atilde; russa. Salt foge, usando todas as sua habilidades e anos de experi&ecirc;ncia como agente infiltrada para conseguir escapar dos seus inimigos, proteger o seu marido e fugir dos seus colegas da CIA.</span></p>\r\n<div id=\"trailers\"><iframe src=\"http://www.youtube.com/embed/2vDUlMPwYh0\" frameborder=\"0\" width=\"435\" height=\"245\"></iframe></div>', 795256),
(36, 10, 'Freedy vs Jason', '4.50', 'freddy-vs-jason', 'nao', 'nao', 'fotos/site/503e235774907.jpg', 'fotos/descricao/503e235774907.jpg', '<p><span>Imagine que voc&ecirc; est&aacute; tendo um pesadelo t&atilde;o real e angustiante que a morte seria um al&iacute;vio... &Eacute; assim que os jovens de Elm Street e Crystal Lake sentem-se desde que Freddy Krueger ressuscitou Jason Vorhees.<br /><br /> Na rua Elm, tudo est&aacute; tranq&uuml;ilo. H&aacute; mais de 10 anos, as v&iacute;timas potenciais de Freddy foram isoladas e inibidas de sonhar atrav&eacute;s do uso de drogas. Assim, a lembran&ccedil;a do man&iacute;aco est&aacute; se apagando e enfraquecendo-o cada vez mais. <br /><br />Desesperado, Freddy decide utilizar-se de outro dem&ocirc;nio para reacender sua apavorante mem&oacute;ria entre os vivos. Surge entre os dois, ent&atilde;o, uma crescente tens&atilde;o cujo &aacute;pice ser&aacute; um verdadeiro Duelo de Tit&atilde;s!</span></p>', 4563215),
(37, 7, 'Vingador do Futuro', '4.50', 'vingador-do-futuro', 'sim', 'sim', 'fotos/site/503f71697cb94.jpg', 'fotos/descricao/503f71697cb94.jpg', '<p><span class=\\\"pequena4 texto nop\\\">Bem-vindo &agrave; Rekall, companhia que pode transformar seus sonhos em mem&oacute;rias reais. Para um oper&aacute;rio de f&aacute;brica como Douglas Quaid (Colin Farrell), embora tenha uma bela esposa,&nbsp;Lori (Kate Beckinsale), que ama, a viagem pela mente soa como as f&eacute;rias perfeitas de sua rotina frustrante - mem&oacute;rias reais de uma vida como espi&atilde;o podem ser exatamente o que ele precisa. <br /><br />Mas, quando a opera&ccedil;&atilde;o d&aacute; errado, Quaid se torna um homem ca&ccedil;ado. Perseguido pela pol&iacute;cia - controlada por Vilos Cohaagen (Bryan Cranston), l&iacute;der do mundo livre -, Quaid alia-se &agrave; rebelde Melina (Jessica Biel) para encontrar o l&iacute;der da resist&ecirc;ncia do submundo&nbsp;Kuato (Bill Nighy) e derrotar Cohaagen. </span></p>', 5626266),
(38, 7, 'Os Vingadores', '4.50', 'os-vingadores', 'sim', 'sim', 'fotos/site/503f71ee6b8da.jpg', 'fotos/descricao/503f71ee6b8da.jpg', '<p><strong>Joss Whedon </strong>pode fazer uma s&eacute;rie de TV baseada na ag&ecirc;ncia <strong>S.H.I.E.L.D.</strong>. A ABC encomendou um piloto &agrave; Marvel e quer o diretor de <strong>Os Vingadores</strong> encarregado da produ&ccedil;&atilde;o, segundo o <em>Deadline</em>.<br /><br />O projeto ser&aacute; situado no mesmo universo de <strong>Os Vingadores </strong>e segue o grupo de policiais liderado por Nick Fury. O piloto ser&aacute; escrito pelo pr&oacute;prio Whedon e seu irm&atilde;o Jed, juntamente com Maurissa Tancharoen. Whedon pode tamb&eacute;m dirigir o piloto.<br /><br />O diretor at&eacute; j&aacute; falou do enredo. \\\"A hist&oacute;ria da s&eacute;rie proposta ser&aacute; amplamente \\\'aut&ocirc;noma\\\' da sequ&ecirc;ncia de Os Vingadores. A s&eacute;rie vai girar em torno das atividades da SHIELD, &oacute;rg&atilde;o regulador para os super-her&oacute;is mostrados em \\\"Avengers\\\", revelou Whedon &agrave; Variety.<br /><br />No universo Marvel, <strong>S.H.I.E.L.D.</strong> &eacute; um grupo de intelig&ecirc;ncia que monitora as a&ccedil;&otilde;es de super-humanos, muitas vezes empregando essas pessoas para lutar contra amea&ccedil;as globais. A produ&ccedil;&atilde;o do piloto est&aacute; \\\"prevista para come&ccedil;ar o mais r&aacute;pido poss&iacute;vel\\\", segundo o <em>Deadline</em>.<br /><br />&Eacute; sempre bom lembrar que <strong>Os Vingadores</strong> j&aacute; fez mais de US$1,49 bilh&atilde;o nas bilheterias de todo o mundo, tornando-se o terceiro filme mais rent&aacute;vel da hist&oacute;ria, atr&aacute;s de <strong>Avatar</strong> e <strong>Titanic</strong>. O Blu-Ray e a edi&ccedil;&atilde;o de colecionador chega &agrave;s lojas brasileiras nesta quarta, 29 de agosto.</p>\r\n<div id=\"trailers\"><iframe src=\"http://www.youtube.com/embed/xy9Wntkb7KU\" frameborder=\"0\" width=\"435\" height=\"245\"></iframe></div>', 168652),
(39, 16, 'O Juiz', '4.50', 'o-juiz', 'sim', 'sim', 'fotos/site/503f72aecbff7.jpg', 'fotos/descricao/503f72aecbff7.jpg', '<p>A adapta&ccedil;&atilde;o das hist&oacute;rias em quadrinhos do <strong>Juiz Dredd</strong> para a telona, estrelada por <strong>Karl Urban</strong> (<em>Star Trek</em>), ganhou um <strong>novo trailer</strong>. O v&iacute;deo fala sobre a cria&ccedil;&atilde;o do personagem nos quadrinhos e a nova adapta&ccedil;&atilde;o aos cinemas.<br /><br />No longa, Joe Dredd &eacute; o juiz de rua mais dur&atilde;o de Mega City One. Ele tem o poder de sentenciar e executar os criminosos quando quiser. Ele luta contra a vil&atilde; <strong>Ma&ndash;Ma</strong> (vivida por Lena Headey de <em>300</em>), l&iacute;der de uma gangue que distribui um novo tipo de droga e controla boa parte do submundo criminoso.<br /><br /><strong>Pete Travis</strong> (<em>Ponto de Vista</em>) assina a dire&ccedil;&atilde;o de<strong> Dredd</strong>. O roteiro &eacute; de <strong>Alex Garland</strong> (<em>Sunshine - Alerta Solar</em>). <br /><br />O filme chega aos cinemas brasileiros em 21 de setembro de 2012.</p>\r\n<div id=\"trailers\"><iframe src=\"http://www.youtube.com/embed/SnAEjAJgg38\" frameborder=\"0\" width=\"435\" height=\"326\"></iframe></div>', 54563),
(40, 7, 'Os mercenÃ¡rios 2', '4.50', 'os-mercenarios', 'sim', 'sim', 'fotos/site/503f735032f28.jpg', 'fotos/descricao/503f735032f28.jpg', '<p>O cinema cria mitos e, vez por outra, costuma alimentar-se deles. Os anos 80 e 90 serviram para solidificar no imagin&aacute;rio popular grandes nomes do g&ecirc;nero de a&ccedil;&atilde;o. Atores dur&otilde;es como Sylvester Stallone, Bruce Willis e Arnold Schwarzenegger foram al&ccedil;ados &agrave; condi&ccedil;&atilde;o de astros das telas em filmes nos quais destilavam testosterona e distribu&iacute;am porrada e tiros em vil&otilde;es especialmente moldados para concentrar toda a rejei&ccedil;&atilde;o do p&uacute;blico.<br /><br />Imposs&iacute;vel n&atilde;o criar identifica&ccedil;&atilde;o com esses caras. Quem, ainda moleque, ou mesmo adulto, n&atilde;o sonhou em ser um Rambo, um Rock Balboa, um John Mclane ou ser inexpugn&aacute;vel como o ciborgue assassino de <em>O Exterminado do Futuro</em>? Toda uma gera&ccedil;&atilde;o de homens, desses de verdade, meio fora de moda nos dias de hoje &eacute; bem verdade. Quantas vezes em uma sala de cinema vimos nossas garotas com cara de t&eacute;dio enquanto nos divert&iacute;amos vendo essa turma quebrar alguns pesco&ccedil;os. \\\"Calma, benzinho, assim que o filme acabar eu volto a ser um cara rom&acirc;ntico\\\".<br /><br />A ideia de ver todos esse mach&otilde;es &ndash; e mais alguns dur&otilde;es da nova gera&ccedil;&atilde;o - reunidos num filme parecia irresist&iacute;vel. E era. Em 2010, Sly usou de sua influ&ecirc;ncia e conseguiu reunir parte da turma. Os f&atilde;s de uma boa fita de a&ccedil;&atilde;o n&atilde;o viam a hora de ver reunidos num mesmo filme ele, Schwarzenegger, Willis e mais outras feras como Dolph Lundgren, Mickey Rouke, Jet Li e Jason Statham. O p&uacute;blico fez sua parte e foi ao cinema, mas a produ&ccedil;&atilde;o decepcionou. Sim, foi legal v&ecirc;-los juntos, mas faltava um bom filme.<br /><br />N&atilde;o demorou para que as queixas pululassem: a dire&ccedil;&atilde;o de Stallone n&atilde;o segura o filme, Bruce Willis e Schwarzenegger n&atilde;o entram em a&ccedil;&atilde;o, o longa se leva a s&eacute;rio demais, as sequ&ecirc;ncias de a&ccedil;&atilde;o s&atilde;o pobres, o vil&atilde;o n&atilde;o mete medo e por a&iacute; vai... A boa not&iacute;cia para os f&atilde;s &eacute; que eles foram ouvidos e todos os problemas do primeiro filme n&atilde;o se repetem em <strong>Os Mercen&aacute;rios 2</strong>, este sim um filme digno da reuni&atilde;o da elite da pancadaria.<br /><br />Stallone teve a humildade de passar a dire&ccedil;&atilde;o do filme para Simon West (de <em>A Filha do General</em> e <em>Con Air &ndash; A Rota da Fuga</em>), que deu um ganho e tanto nas cenas de a&ccedil;&atilde;o. O longa j&aacute; come&ccedil;a dizendo a que veio com uma movimentada cena de abertura, que mostra o resgate de um bilion&aacute;rio chin&ecirc;s sequestrado por um grupo de rebeldes no Nepal. Tiros, explos&otilde;es e muitos cad&aacute;veres ficam pelo caminho do grupo numa sequ&ecirc;ncia bem feita com direito a combate no solo e na &aacute;gua.<br /><br />Desta vez Schwarzenegger e Willis n&atilde;o ficam de blablabl&aacute;: partem para a a&ccedil;&atilde;o e botam para quebrar junto com o grupo de mercen&aacute;rios. Jean-Claude Van Damme, que havia sido convidado para o primeiro filme e recusou, desta vez d&aacute; o ar da gra&ccedil;a como um vil&atilde;o &agrave; altura do filme. Um vil&atilde;o t&atilde;o imbu&iacute;do de sua condi&ccedil;&atilde;o que se chama <em>Vilain</em>. E essa &eacute; apenas uma das muitas brincadeiras do filme, que acerta a m&atilde;o em n&atilde;o se levar a s&eacute;rio. <br /><br />O espectador vai curtir uma t&iacute;pica fita de a&ccedil;&atilde;o, mas vai rir muito com os diversos momentos bem-humorados que pontuam a produ&ccedil;&atilde;o. H&aacute; muitas refer&ecirc;ncias aos filmes de sucesso protagonizados pelos astros no passado. O filme tamb&eacute;m brinca bastante com a idade dos atores e o fato de n&atilde;o estarem mais em forma. A turma mais nova talvez perca algumas refer&ecirc;ncias, mas quem tem mais de 30 certamente vai se deleitar com esses momentos. Por sinal, ri mais com este filme do que com muitas com&eacute;dias que assisti ultimamente. <br /><br />Nenhum momento, no entanto, &eacute; mais divertido que a entrada em cena do, hoje al&ccedil;ado ao status de &iacute;cone da macheza, Chuck Norris. O astro de filmes como <em>Comando Delta</em>, <em>Braddock</em> e <em>Invas&atilde;o dos USA</em>, o homem que j&aacute; dizimou centenas de inimigos carregando uma express&atilde;o mais fria que a do Exterminador do Futuro, entra em cena no meio do filme ao som do tema cl&aacute;ssico de Ennio Morriconne para o filme <em>Tr&ecirc;s Homens em Conflito</em>, faz um t&iacute;pico estrago digno da lenda e tem um di&aacute;logo impag&aacute;vel com Stallone, refer&ecirc;ncia aos famosos Chuck Norris<em> Facts</em> que ganharam fama na internet. <br /><br />N&atilde;o vou me ater ao enredo do filme. Acredite, isso &eacute; o que menos importa em <strong>Os Mercen&aacute;rios 2</strong>. Ainda assim, h&aacute; uma hist&oacute;ria coesa por tr&aacute;s dos acontecimentos que faz com que o filme n&atilde;o pare&ccedil;a apenas um amontoado de cenas de a&ccedil;&atilde;o sem nenhum prop&oacute;sito. Tudo est&aacute; devidamente justificado na trama. <br /><br />Se n&atilde;o fosse f&atilde; desses caras, se fosse dar uma opini&atilde;o meramente t&eacute;cnica, classificaria o filme com tr&ecirc;s estrelas. Mas antes de cr&iacute;tico, sou espectador, f&atilde; de cinema. Ainda me empolgo com um filme como nos velhos tempos. Vou bancar o mach&atilde;o e presentear<strong> Os Mercen&aacute;rios 2</strong> com quatro estrelas. E quem quiser reclamar, que o fa&ccedil;a com Chuck Norris.</p>', 3215697),
(42, 7, 'Sequestro no EspaÃ§o', '4.50', 'sequestro-no-espaco', 'sim', 'sim', 'fotos/site/504136f317755.jpg', 'fotos/descricao/504136f317755.jpg', '<p>Em troca de sua liberdade ele tem que resgatar a filha do presidente que est&aacute; em uma pris&atilde;o no espa&ccedil;o dominada por violentos detentos.</p>\r\n<div id=\\\"trailers\\\"><iframe src=\\\"http://www.youtube.com/embed/93Y6xyTG_Nw\\\" frameborder=\\\"0\\\" width=\\\"435\\\" height=\\\"245\\\"></iframe></div>', 52365478),
(43, 8, 'Resident Evil RetribuiÃ§Ã£o', '5.00', 'resident-evil-retribuicao', 'sim', 'sim', 'fotos/site/504137af8f0c1.jpg', 'fotos/descricao/504137af8f0c1.jpg', '<p>No elenco est&atilde;o&nbsp;<strong>Milla Jovovich</strong>,&nbsp;<strong>Michelle Rodriguez</strong>,&nbsp;<strong>Sienna Guillory</strong>,&nbsp;<strong>Shawn Roberts</strong>,<strong> Li Bingbing</strong>,<strong> Johann Urb</strong>,&nbsp;<strong>Boris Kodjoe</strong>,<strong> Colin Salmon</strong>,<strong>Oded Fehr</strong> e&nbsp;<strong>Kevin Durand</strong>.&nbsp;Assim como os tr&ecirc;s &uacute;ltimos, que estrearam em setembro nos EUA, a Sony Pictures&nbsp;marcou&nbsp;a estreia de&nbsp;<em>Resident Evil: Retribui&ccedil;&atilde;o</em> para 14 de setembro.</p>\r\n<div id=\\\"trailers\\\"><iframe src=\\\"http://www.youtube.com/embed/fetL5JuKGv4\\\" frameborder=\\\"0\\\" width=\\\"435\\\" height=\\\"245\\\"></iframe></div>', 6533278),
(44, 8, 'Caravana da Coragem', '4.50', 'caravana-coragem', 'sim', 'sim', 'fotos/site/5044193421b15.jpg', 'fotos/descricao/5044193421b15.jpg', '<p>Filme estrelado por aqueles bichinhos peludos conhecidos como Ewoks. Em Caravana da Coragem, a fam&iacute;lia Towani foi separada quando sua nave espacial cai em Endor. <br /><br />Os pais s&atilde;o logo capturados por um gigante conhecido como Gorax, e Mace e Cindel, o filho e a filha, est&atilde;o desaparecidos. Quando os Ewoks encontram as crian&ccedil;as Towani nos destro&ccedil;os da nave, logo fica claro que ser&aacute; necess&aacute;ria confian&ccedil;a m&uacute;tua para embarcar em uma aventura para resgatar os pais Towani.</p>', 533248),
(45, 8, '2012', '4.50', '2012', 'sim', 'sim', 'fotos/site/5044199f081d2.jpg', 'fotos/descricao/5044199f081d2.jpg', '<p>Em 2008, o presidente americano (Danny Glover) convoca uma reuni&atilde;o de emerg&ecirc;ncia com as principais pot&ecirc;ncias para conversar sobre um grande perigo para a humanidade. Os anos passam e, com a proximidade de 2012, as autoridades decidem que n&atilde;o &eacute; mais poss&iacute;vel conter o perigo eminente que pode significar o fim do mundo. Com isso, colocam em pr&aacute;tica o plano iniciado anos atr&aacute;s, sob o comando dos cientistas Adrian Helmsley (Chiwetel Ejiofor) e Carl Anheuser (Oliver Platt).<br /><br /> Enquanto isso, o escritor Jackson Curtis (John Cusack) leva sua vida de marido separado, pai de dois filhos, como motorista de limusine e tendo que aturar as reclama&ccedil;&otilde;es da ex esposa (Amanda Peet). Ao levar os filhos para passear, ele descobre os primeiros sintomas da destrui&ccedil;&atilde;o do planeta.</p>', 698523),
(46, 8, 'Avatar', '4.50', 'avatar', 'sim', 'sim', 'fotos/site/5044b9e8f2fdb.jpg', 'fotos/descricao/5044b9e8f2fdb.jpg', '<p><span><strong>AVATAR</strong> nos conduz por um mundo espetacular al&eacute;m da imagina&ccedil;&atilde;o, onde um her&oacute;i relutante vindo da Terra embarca numa aventura &eacute;pica, e acaba lutando para salvar o mundo extraterrestre que aprendeu a chamar de lar.<br /></span></p>\r\n<p><span>&nbsp;</span></p>\r\n<p><span>Adentramos o mundo alien&iacute;gena atrav&eacute;s dos olhos de Jake Sully, um ex-fuzileiro naval confinado a uma cadeira de rodas. Apesar do que aconteceu ao seu corpo, Jake continua se sentindo um guerreiro e viaja anos-luz &agrave; esta&ccedil;&atilde;o que os humanos instalaram em Pandora, onde a humanidade quer explorar o min&eacute;rio raro unobtanium, que pode ser a chave para solucionar a crise energ&eacute;tica da Terra. Como a atmosfera de Pandora &eacute; t&oacute;xica, foi criado o Programa Avatar, em que &ldquo;condutores&rdquo; humanos t&ecirc;m sua consci&ecirc;ncia ligada a um avatar, um corpo biol&oacute;gico controlado &agrave; dist&acirc;ncia capaz de sobreviver nesse ar letal. Os avatares s&atilde;o h&iacute;bridos geneticamente produzidos de DNA humano e DNA dos nativos de Pandora, os Na&rsquo;vi.<br /><br /></span></p>\r\n<p><span>Renascido em sua forma avatar, Jake consegue voltar a andar. Ele recebe a miss&atilde;o de se infiltrar entre os Na&rsquo;vi, que se tornaram um obst&aacute;culo &agrave; extra&ccedil;&atilde;o do precioso min&eacute;rio. Ocorre que uma bela Na&rsquo;vi, Neytiri, salva a vida de Jake, o que muda tudo. Jake &eacute; acolhido pelo cl&atilde; de Neytiri, e aprende a ser um deles depois de passar por v&aacute;rios testes e aventuras. O relacionamento de Jake com sua hesitante instrutora Neytiri se aprofunda, e ele passa a respeitar o jeito de viver dos Na&rsquo;vi, e por fim passa a ocupar seu lugar no meio deles.<br /><br /></span></p>\r\n<p><span>Logo ele enfrentar&aacute; a maior de suas prova&ccedil;&otilde;es, ao comandar um conflito &eacute;pico que decidir&aacute; nada menos que o destino de um mundo inteiro. </span></p>', 563214789),
(47, 16, 'Fogo contra fogo', '4.50', 'fogo-contra-fogo', 'nao', 'sim', 'fotos/site/5044e0de20a3d.jpg', 'fotos/descricao/5044e0de20a3d.jpg', '<p>Descri&ccedil;&atilde;o do filme fogo contrra fogo</p>', 4896523),
(48, 10, 'A possessÃ£o', '4.50', 'a-possessao', 'nao', 'sim', 'fotos/site/504570b07cc60.jpg', 'fotos/descricao/504570b07cc60.jpg', '<p>No filme <strong>The Possession</strong>,&nbsp; um jovem compra uma caixa antiga sem saber que dentro do objeto existe um antigo esp&iacute;rito malicioso. <br /><br />Os pais da menina se juntam para lutar contra a maldi&ccedil;&atilde;o que a domina.</p>\r\n<div id=\\\"trailers\\\"><iframe src=\\\"http://www.youtube.com/embed/0gBeG31fX40\\\" frameborder=\\\"0\\\" width=\\\"435\\\" height=\\\"245\\\"></iframe></div>', 63214589),
(49, 19, 'Jovens Pistoleiros', '4.50', 'jovens-pistoleiros', 'nao', 'sim', 'fotos/site/5045790898207.jpg', 'fotos/descricao/5045790898207.jpg', '<p>Descricao do flme jovens pistoleiros</p>', 45523698);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `fotos_id` int(11) NOT NULL,
  `fotos_filme` int(11) DEFAULT NULL,
  `fotos_caminho` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacoes`
--

CREATE TABLE `locacoes` (
  `locacoes_id` int(11) NOT NULL,
  `locacoes_mes` int(11) DEFAULT NULL,
  `locacoes_filme` int(11) DEFAULT NULL,
  `locacoes_total` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locacoes`
--

INSERT INTO `locacoes` (`locacoes_id`, `locacoes_mes`, `locacoes_filme`, `locacoes_total`) VALUES
(34, 8, 24, 4),
(35, 8, 28, 3),
(37, 8, 25, 4),
(38, 8, 29, 1),
(39, 8, 31, 2),
(40, 8, 30, 4),
(41, 8, 27, 1),
(42, 8, 32, 1),
(43, 8, 33, 1),
(44, 8, 35, 1),
(47, 9, 25, 14),
(48, 9, 29, 7),
(49, 9, 31, 9),
(50, 9, 27, 8),
(51, 9, 39, 4),
(52, 9, 35, 5),
(53, 9, 43, 1),
(55, 9, 41, 1),
(56, 9, 24, 4),
(57, 9, 33, 3),
(58, 9, 37, 2),
(59, 9, 44, 3),
(60, 9, 45, 6),
(61, 9, 30, 3),
(62, 9, 38, 3),
(63, 9, 32, 3),
(64, 9, 34, 10),
(65, 9, 48, 3),
(69, 9, 46, 2),
(70, 9, 36, 4),
(71, 9, 49, 1),
(72, 9, 28, 1),
(73, 9, 40, 1),
(74, 10, 45, 1),
(75, 10, 25, 7),
(76, 10, 48, 3),
(77, 10, 29, 1),
(78, 10, 46, 1),
(79, 10, 44, 1),
(80, 10, 34, 1),
(81, 10, 31, 1),
(82, 10, 30, 1),
(83, 10, 47, 1),
(84, 10, 36, 1),
(85, 10, 39, 1),
(86, 10, 49, 1),
(87, 10, 40, 3),
(88, 10, 38, 1),
(89, 10, 28, 1),
(90, 10, 43, 1),
(91, 10, 33, 1),
(92, 10, 47, 1),
(93, 0, 47, 1),
(94, 10, 47, 1),
(95, 10, 47, 1),
(96, 10, 47, 1),
(97, 0, 35, 1),
(98, 0, 24, 1),
(99, 10, 27, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacoes_cliente`
--

CREATE TABLE `locacoes_cliente` (
  `locacoes_cliente_id` int(11) NOT NULL,
  `locacoes_cliente_nome` int(11) DEFAULT NULL,
  `locacoes_cliente_filme` int(11) DEFAULT NULL,
  `locacoes_cliente_mes` int(11) DEFAULT NULL,
  `locacoes_cliente_total` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locacoes_cliente`
--

INSERT INTO `locacoes_cliente` (`locacoes_cliente_id`, `locacoes_cliente_nome`, `locacoes_cliente_filme`, `locacoes_cliente_mes`, `locacoes_cliente_total`) VALUES
(1, 13, 24, 8, 4),
(2, 13, 28, 8, 3),
(7, 13, 30, 8, 4),
(8, 13, 27, 8, 1),
(9, 13, 32, 8, 1),
(10, 13, 33, 8, 1),
(11, 13, 35, 8, 1),
(15, 13, 25, 9, 12),
(16, 13, 29, 9, 6),
(17, 13, 31, 9, 9),
(18, 13, 27, 9, 8),
(19, 13, 39, 9, 4),
(20, 13, 35, 9, 5),
(21, 13, 43, 9, 1),
(23, 13, 41, 9, 1),
(24, 13, 24, 9, 4),
(25, 13, 33, 9, 3),
(26, 13, 37, 9, 2),
(27, 16, 44, 9, 1),
(28, 16, 45, 9, 4),
(29, 13, 30, 9, 3),
(30, 13, 38, 9, 3),
(40, 13, 46, 9, 2),
(41, 13, 34, 9, 4),
(42, 13, 36, 9, 4),
(43, 13, 45, 9, 2),
(46, 13, 28, 9, 1),
(47, 13, 44, 9, 2),
(48, 13, 40, 9, 1),
(49, 16, 48, 9, 1),
(50, 16, 29, 9, 1),
(51, 16, 45, 10, 1),
(52, 13, 25, 10, 3),
(53, 13, 48, 10, 3),
(54, 16, 29, 10, 1),
(55, 16, 46, 10, 1),
(56, 16, 44, 10, 1),
(57, 13, 34, 10, 1),
(58, 13, 31, 10, 1),
(59, 16, 30, 10, 1),
(60, 16, 47, 10, 5),
(61, 16, 36, 10, 1),
(62, 13, 39, 10, 1),
(63, 13, 49, 10, 1),
(64, 13, 40, 10, 3),
(65, 13, 38, 10, 1),
(66, 16, 28, 10, 1),
(67, 13, 43, 10, 1),
(68, 13, 33, 10, 1),
(74, 13, 35, 10, 1),
(75, 13, 24, 10, 1),
(76, 16, 27, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locados`
--

CREATE TABLE `locados` (
  `locados_id` int(11) NOT NULL,
  `locados_filme` int(11) DEFAULT NULL,
  `locados_data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `locados_devolucao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locados_cliente` int(11) DEFAULT NULL,
  `locados_status` varchar(50) DEFAULT NULL,
  `locados_valor` decimal(10,2) DEFAULT NULL,
  `locados_entrega` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locados`
--

INSERT INTO `locados` (`locados_id`, `locados_filme`, `locados_data`, `locados_devolucao`, `locados_cliente`, `locados_status`, `locados_valor`, `locados_entrega`) VALUES
(99, 45, '2012-10-11 15:53:35', '2012-10-13 15:53:35', 16, 'Locado', '4.50', 'buscar'),
(100, 25, '2012-10-11 17:45:56', '2012-10-13 17:45:56', 13, 'Locado', '30.00', 'buscar'),
(101, 48, '2012-10-11 17:44:55', '2012-10-13 17:44:55', 13, 'Locado', '13.50', 'buscar'),
(102, 29, '2012-10-11 15:56:28', '2012-10-13 15:56:28', 16, 'Locado', '4.50', 'buscar'),
(103, 46, '2012-10-11 15:57:39', '2012-10-13 15:57:39', 16, 'Locado', '4.50', 'buscar'),
(104, 44, '2012-10-11 15:58:31', '2012-10-13 15:58:31', 16, 'Locado', '4.50', 'buscar'),
(105, 34, '2012-10-11 16:01:56', '2012-10-13 16:01:56', 13, 'Locado', '4.50', 'buscar'),
(106, 31, '2012-10-11 16:01:56', '2012-10-13 16:01:56', 13, 'Locado', '4.50', 'buscar'),
(107, 30, '2012-10-11 16:02:32', '2012-10-13 16:02:32', 16, 'Locado', '4.50', 'buscar'),
(108, 47, '2012-10-11 16:26:15', '2012-10-13 16:26:15', 16, 'Locado', '27.00', 'buscar'),
(109, 36, '2012-10-11 16:05:56', '2012-10-13 16:05:56', 16, 'Locado', '4.50', 'buscar'),
(110, 39, '2012-10-11 16:07:17', '2012-10-13 16:07:17', 13, 'Locado', '4.50', 'buscar'),
(111, 49, '2012-10-11 16:07:18', '2012-10-13 16:07:18', 13, 'Locado', '4.50', 'buscar'),
(112, 40, '2012-10-11 16:30:31', '2012-10-13 16:30:31', 13, 'Locado', '13.50', 'buscar'),
(113, 38, '2012-10-11 16:07:18', '2012-10-13 16:07:18', 13, 'Locado', '4.50', 'buscar'),
(114, 28, '2012-10-11 16:13:43', '2012-10-13 16:13:43', 16, 'Locado', '4.50', 'buscar'),
(115, 43, '2012-10-11 16:18:55', '2012-10-13 16:18:55', 13, 'Locado', '5.00', 'buscar'),
(116, 33, '2012-10-11 16:18:56', '2012-10-13 16:18:56', 13, 'Locado', '3.50', 'buscar'),
(117, 35, '2012-10-11 17:47:28', '2012-10-13 17:47:28', 13, 'Locado', '4.50', 'buscar'),
(119, 27, '2012-10-11 17:53:51', '2012-10-13 17:53:51', 16, 'Locado', '5.00', 'buscar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(11) NOT NULL,
  `menus_nome` varchar(50) DEFAULT NULL,
  `menus_slug` varchar(50) DEFAULT NULL,
  `menus_link` varchar(150) DEFAULT NULL,
  `menus_visivel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`menus_id`, `menus_nome`, `menus_slug`, `menus_link`, `menus_visivel`) VALUES
(1, 'LanÃ§amentos', 'lancamentos', 'http://netfilmes.com.br/lancamentos', 'habilitado'),
(3, 'NotÃ­cias', 'noticias', 'http://netfilmes.com.br/noticias', 'habilitado'),
(4, 'Contato', 'contato', 'http://netfilmes.com.br/contato', 'habilitado'),
(5, 'Minha Conta', 'minha_conta', 'http://netfilmes.com.br/minha_conta', 'habilitado'),
(6, 'Cadastro', 'cadastro', 'http://netfilmes.com.br/cadastro', 'habilitado'),
(7, 'Meus Filmes', 'meus_filmes', 'http://netfilmes.com.br/meus_filmes', 'habilitado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `meses`
--

CREATE TABLE `meses` (
  `meses_id` int(11) NOT NULL,
  `meses_nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `meses`
--

INSERT INTO `meses` (`meses_id`, `meses_nome`) VALUES
(1, 'Janeiro'),
(2, 'Fevereiro'),
(3, 'Marco'),
(4, 'Abril'),
(5, 'Maio'),
(6, 'Junho'),
(7, 'Julho'),
(8, 'Agosto'),
(9, 'Setembro'),
(10, 'Outubro'),
(11, 'Novembro'),
(12, 'Dezembro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `newsletter_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `newsletter_email`) VALUES
(5, 'contato@asolucoesweb.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `noticias_id` int(11) NOT NULL,
  `noticias_titulo` varchar(100) DEFAULT NULL,
  `noticias_texto` text DEFAULT NULL,
  `noticias_data` date DEFAULT NULL,
  `noticias_slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`noticias_id`, `noticias_titulo`, `noticias_texto`, `noticias_data`, `noticias_slug`) VALUES
(1, 'Batman - O Cavaleiro das Trevas ganha novo clipe e mais imagens', '<p><strong><em>Cavaleiro das Trevas</em></strong>, vers&atilde;o <span>animada</span> da j&aacute; cl&aacute;ssica miniss&eacute;rie de <strong>Frank Miller</strong>&nbsp; de 1986 que mostra o retorno de um Batman de&nbsp;<img style=\"margin: 2px; border: 1px solid black; float: left;\" src=\"../../../../imagens_site/ferrari-288-gto-09.jpg\" alt=\"\" width=\"250\" height=\"147\" />meia-idade ao combate ao crime, ganhou mais um clipe e novas imagens.&nbsp;O l&iacute;der dos Mutantes e outros inimigos do Homem-Morcego s&atilde;o os protagonistas da pr&eacute;via. Veja o v&iacute;deo no player abaixo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"http://www.youtube.com/embed/v8sNx_lWLjM\" frameborder=\"0\" width=\"760\" height=\"437\"></iframe></p>\r\n<p><br />O filme ser&aacute; lan&ccedil;ado em duas partes, em 25 de setembro de 2012 e no in&iacute;cio de 2013, em Blu-ray, DVD e digital. No elenco do longa dirigido por Jay Oliva est&atilde;o o RoboCop Peter Weller (voz de Batman) e Ariel Winter (Robin).</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2012-08-28', 'batman-o-cavaleiro-das-trevas-ganha-novo-clipe-e-mais-imagens'),
(2, 'Os Vingadores | Cenas deletadas e erros de gravaÃ§Ã£o do filme', '<p><em><strong>Os Vingadores - The Avengers </strong></em>ser&aacute; lan&ccedil;ado em setembro em DVD e Blu-ray. Em antecipa&ccedil;&atilde;o ao lan&ccedil;amento, a Marvel liberou algumas cenas deletadas do filme, al&eacute;m dos erros de grava&ccedil;&atilde;o:<br /><br /></p>\r\n<p>O filme ser&aacute; lan&ccedil;ado em setembro em DVD e Blu-ray, com direito a uma caixa especial reunindo todos os filmes da \"Fase 1\" do Marvel Studios. A caixa j&aacute; est&aacute; dispon&iacute;vel para&nbsp;pr&eacute;-venda nos EUA. No Brasil, a lata com o Blu-Ray de&nbsp;<em>Os Vingadores</em> sai no dia 29 de agosto &nbsp;e tamb&eacute;m est&aacute; em&nbsp;pr&eacute;-venda -&nbsp;veja a lista de cenas deletadas. Acompanhe a cobertura completa do Omelete de&nbsp;<em>Os Vingadores</em> com&nbsp;cr&iacute;tica, entrevistas, v&iacute;deos, fotos e not&iacute;cias.</p>', '2012-09-06', 'os-vingadores-cenas-deletadas-e-erros-de-gravaÃ§Ã£o-do-filme'),
(3, 'VÃ­deo de Motoqueiro Fantasma 2 revela cenas deletadas e Nicolas Cage no set', '<p>O Blu-ray e DVD de <strong><em>Motoqueiro Fantasma - Esp&iacute;rito de Vingan&ccedil;a</em></strong> (<em>Ghost Rider - Spirit of Vengeance</em>) saiu nos EUA em junho, mas desde ontem est&aacute; circulando no <em>YouTube</em>&nbsp; um v&iacute;deo com cenas deletadas e n&atilde;o finalizadas do filme. Vale conferir n&atilde;o s&oacute; pelo material <span>in&eacute;dito</span>, mas principalmente pela oportunidade de ver Nicolas Cage fazendo sua m&aacute;gica antes do aplique dos efeitos visuais:</p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"border: 1px solid black; float: left; margin-right: 2px; margin-left: 2px;\" src=\"../../../../imagens/motoqueiro-fantasma-2-still-27jan2012-27.jpg\" alt=\"\" width=\"220\" height=\"150\" /></p>\r\n<p>Motoqueiro Fantasma 2: O Esp&iacute;rito da Vingan&ccedil;a acompanha um Johnny Blaze tentando controlar sua maldi&ccedil;&atilde;o, escondido do mundo. Logo no come&ccedil;o do filme, um flashback relembra o acordo com Mefist&oacute;feles, que o tornou no Motoqueiro<br /><br />Quando o religioso Moreau o encontra, Johnny decide ajud&aacute;-lo a encontrar Nadya e Danny, sua mulher e filho. Eles ter&atilde;o que combater o malvado Roarke, velho conhecido de Johnny.<br /><strong><br /><img style=\"margin-left: 2px; margin-right: 2px; border: 1px solid black; float: right;\" src=\"../../../../imagens/motoqueiro-fantasma08.jpg\" alt=\"\" width=\"220\" height=\"161\" /></strong>Nicolas Cage est&aacute; de volta no papel de Johnny Blaze em: <em>Motoqueiro Fantasma: Esp&iacute;rito de Vingan&ccedil;a</em> (Ghost Rider: Spirit of Vengeance). Depois de se esconder na Europa, Blaze &eacute; recrutado por uma seita secreta da igreja para salvar um garoto (Fergus Riordan) do dem&ocirc;nio (Ciaran Hinds). <br /><br />Johnny tenta recusar o chamado, mas essa &eacute; a sua grande chance de se livrar de sua maldi&ccedil;&atilde;o. Com exibi&ccedil;&atilde;o em 3D.<strong><br /><br /><br /><br /></strong>Assiata abixo o trailer:<strong><br /><iframe src=\"\\&quot;http://www.youtube.com/embed/OnNAci6IEgc\\&quot;\" frameborder=\"\\&quot;0\\&quot;\" width=\"770\" height=\"434\"></iframe><br /><br /></strong></p>', '2012-09-06', 'vÃ­deo-de-motoqueiro-fantasma-2-revela-cenas-deletadas'),
(4, 'Death Race 3: Inferno | Sai o trailer de Corrida Mortal 3', '<p><em><strong>Corrida Mortal</strong></em> est&aacute; ganhando um terceiro filme, <strong><em>Death Race 3: Inferno</em></strong>, e o primeiro trailer acaba de sair. <em>\\\"Dos realizadores que trouxeram pra voc&ecirc; </em>Resident Evil<em> e </em>Corrida Mortal<em>\\\"</em>, diz a pr&eacute;via:</p>\r\n<p>&nbsp;</p>\r\n<p><iframe src=\"http://www.youtube.com/embed/KIB8458Ey8M\" frameborder=\"0\" width=\"772\" height=\"434\"></iframe></p>\r\n<p>&nbsp;</p>\r\n<p>No filme, criminosos buscam sua liberdade em novos ve&iacute;culos e se enfrentam em uma remodelada <span>competi&ccedil;&atilde;o</span> mortal, quando a corrida &eacute; levada ao terreno off-road do deserto de Kalahari, na &Aacute;frica do Sul. <strong>Luke Goss</strong>&nbsp; retorna ao papel de Frankenstein, <span>astro</span> das corridas mortais. O elenco conta ainda com <strong>Danny Trejo</strong>, <strong>Ving Rhames</strong>, <strong>Robin Shou</strong>, <strong>Fred Koelher</strong>, <strong>Dougray Scott</strong> e <strong>Hlubi Mboya</strong>.</p>\r\n<p>O inexpressivo holand&ecirc;s&nbsp;<strong>Roel Rein&eacute;</strong>, que substituiu&nbsp;<strong>Paul W.S. Anderson</strong> no comando de&nbsp;<em>Death Race 2</em>, retorna para o terceiro. A&nbsp;<strong>Universal </strong>lan&ccedil;ar&aacute; o filme direto em&nbsp;DVD&nbsp;e Blu-ray nos EUA, ainda sem data definida.</p>', '2012-09-06', 'death-race-3-Inferno-sai-o-trailer-de-corrida-mortal-3'),
(5, 'Soldado Universal 4 com Van Damme e Dolph Lundgren tem lanÃ§amento marcado', '<p><em><strong>Universal Soldier: Day of Reckoning</strong></em>, o quarto <span>filme</span> da s&eacute;rie <strong><em>Soldado Universal</em></strong>, tem lan&ccedil;amento garantido nos EUA. A <strong>Magnet Releasing</strong>&nbsp; <span>comprou</span> os direitos e pretende colocar o longa nos cinemas de l&aacute; em 30 de novembro.<br /><br /></p>\r\n<p>Tamb&eacute;m conhecido pelo t&iacute;tulo <em>Universal Soldier: A New Dimension</em>, o filme &eacute; o primeiro rodado em 3D na franquia e custou estimados US$ 11 milh&otilde;es. <strong>Jean-Claude Van Damme</strong> e <strong>Dolph Lundgren</strong> retornam aos pap&eacute;is de Luc Deveraux e Andrew Scott, respectivamente, e <strong>Scott Adkins</strong> (que divide a tela com eles em <em>Os Mercen&aacute;rios 2</em>) protagoniza.<br /><br /><br /></p>\r\n<p><iframe src=\"http://www.youtube.com/embed/r7TFssY9ZF0\" frameborder=\"\\&quot;0\\&quot;\" width=\"760\" height=\"570\"></iframe></p>\r\n<p><br />Veja na galeria o p&ocirc;ster e fotos, incluindo um Van Damme careca com uma maquiagem de dar inveja ao Coronel Kurtz de <em>Apocalypse Now</em>...</p>\r\n<p><br />Vale lembrar que <strong><em>Soldado Universal 3: Regenera&ccedil;&atilde;o</em></strong> saiu direto em DVD no Brasil e nos Estados Unidos. Muitos f&atilde;s do primeiro filme reclamam que Van Damme e Lundgren apareciam pouco no terceiro. Em entrevista, o diretor <strong>John Hyams</strong> diz que Van Damme aparece ainda menos em <em>Day of Reckoning</em> e que o tempo de tela de Ludgren &eacute; equivalente ao terceiro filme.</p>', '2012-09-07', 'soldado-universal-4-com-van-damme-e-dolph-lundgren-tem-lancamento-marcado'),
(7, 'Novo trailer do filme o vingador do futuro', '<p>Antes da estreia nos cinemas do remake O Vingador do Futuro (Total Recall), em 17 de agosto, o filme original de Paul Verhoeven chegar&aacute; ao Blu-ray. No Reino Unido, o Studio Canal far&aacute; um relan&ccedil;amento do cl&aacute;ssico moderno nas telonas apenas no dia 10 de julho - e \\\"para\\\" isso soltou um trailer.<br /><br /> O v&iacute;deo pega as cenas do longa de 1990 e edita-as com o estilo dos trailers de hoje em dia - assista abaixo e compare com o original: <br /><br /> <iframe src=\"\\&quot;http://www.youtube.com/embed/sWMhADqlPYg\\&quot;\" frameborder=\"\\&quot;0\\&quot;\" width=\"770\" height=\"434\"></iframe></p>', '2012-09-07', 'novo-trailer-novo-vingador-do-futuro'),
(13, 'O senhor dos AnÃ©is', '<p><img style=\"float: left; margin-right: 2px; margin-left: 2px; border: 1px solid black;\" src=\"../../../../imagens_site/8cd503eafcd198c72c8ac4487c6dc0b3.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>\r\n<p><span class=\"mw-redirect\">Frodo Bolseiro</span> &eacute; um hobbit do Condado, que recebe de seu tio Bilbo um anel de rara beleza. Esse anel tem uma longa hist&oacute;ria: foi roubado de uma criatura chamada Gollum (como relatado no livro O Hobbit), e desde ent&atilde;o ele tem sido guardado por Bilbo.</p>\r\n<p>o Mago Gandalf, um velho amigo de Bilbo, percebe o poder que aquele anel possui, n&atilde;o sendo um anel comum, mas sim o <span class=\"mw-redirect\">Um Anel</span>, artefato m&aacute;gico forjado por Sauron, o Senhor do Escuro, e que fora perdido numa batalha muito tempo antes. Se recuperado, o Um Anel permitiria a Sauron o dom&iacute;nio definitivo sobre toda a <span class=\"mw-redirect\">Terra-m&eacute;dia</span>.<br /><br /> O Um Anel, ou Anel do Poder, dera longevidade fora do comum a seu antigo dono, Bilbo, e possuia consci&ecirc;ncia, uma vontade pr&oacute;pria que o conduzia sempre na dire&ccedil;&atilde;o do seu criador e senhor. Gandalf aconselha Bilbo a deixar o Condado, planejado para ocorrer at&eacute; a festa de anivers&aacute;rio daquele ano. Gandalf parte, para resolver alguns assuntos, mas combinando que voltaria para acompanhar Frodo, por&eacute;m, n&atilde;o manda not&iacute;cias durante v&aacute;rios meses. Chegando a data prevista, Bilbo decide deixar o Condado e deixa tudo para Frodo. Depois de um tempo, Gandalf retorna e convence Frodo a partir para destruir o anel, ap&oacute;s vender Bols&atilde;o,Frodo leva consigo seus amigos Sam, Merry e Pippin para sua aventura.<br /><br /></p>\r\n<p>Os hobbits resolvem pegar um atalho que passa atrav&eacute;s da Floresta Velha, lar de &aacute;rvores que se comunicam entre si. Dentro da Floresta, os hobbits s&atilde;o salvos de uma &aacute;rvore violenta por um estranho ser que adora cantar: o enigm&aacute;tico Tom Bombadil, um dos maiores mist&eacute;rios de <span class=\"mw-redirect\">Tolkien</span>.<br /><br /></p>\r\n<p>Passando por outros perigos, os hobbits chegam a Bree, uma vila habitada por Homens e hobbits, perto da fronteira do Condado, e l&aacute; aceitam a ajuda de um Guardi&atilde;o chamado Passolargo, amigo de Gandalf, que os guia at&eacute; Rivendell, um reino ainda habitado por <span class=\"mw-redirect\">elfos</span>, seres imortais, detentores de grande poder, beleza e sabedoria.<br /><br /> Mas o caminho ainda &eacute; perigoso: o grupo &eacute; emboscado no Topo do Vento e <span class=\"mw-redirect\">Frodo</span> acaba apunhalado p<img style=\"margin-left: 2px; margin-right: 2px; border: 1px solid black; float: right;\" src=\"../../../../imagens_site/lordoftherings_160800.jpg\" alt=\"\" width=\"150\" height=\"113\" />or um Nazg&ucirc;l, Espectro do Anel. Passolargo consegue repelir a ofensiva do Inimigo e foge com Frodo, que est&aacute; gravemente ferido, e os outros hobbits. Quando est&atilde;o a ser novamente alcan&ccedil;ados pelos Espectros do Anel, o elfo Glorfindel encontra-os e condu-los em seguran&ccedil;a at&eacute; Valfenda. Os Nazg&ucirc;l tentam det&ecirc;-los mas s&atilde;o varridos pela inunda&ccedil;&atilde;o s&uacute;bita do rio Baraduin.<br /><br /></p>\r\n<p>J&aacute; curado, <span class=\"mw-redirect\">Frodo</span> descobre as maravilhas de <span class=\"mw-redirect\">Valfenda</span> e l&aacute; &eacute; realizado um conselho liderado por Elrond, o meio-elfo mestre de Rivendell e pai de <span class=\"mw-redirect\">Arwen</span>, a amada de Passolargo, cujo verdadeiro nome &eacute; Aragorn, que se revela descendente de Isildur e herdeiro do Trono de Gondor.<br /><br /></p>\r\n<p>No Conselho de Elrond s&atilde;o expostos os problemas relacionados ao <span class=\"mw-redirect\">Um Anel</span>. Boromir, filho do regente de Gondor, sugere usar o Anel do Poder contra Sauron. Elrond e Gandalf rejeitam a ideia imediatamente e explicam os v&aacute;rios motivos pelos quais n&atilde;o podem us&aacute;-lo contra o \"Senhor dos An&eacute;is\": Sauron &eacute; o &uacute;nico e verdadeiro mestre do Anel, pois o forjou, sendo portanto totalmente maligno, al&eacute;m disso, seu poder &eacute; grande demais para ser controlado por mortais comuns e mesmo os poderosos entre os povos livres da Terra-M&eacute;dia, como os imortais elfos (Elrond) e os magos (Gandalf), temem inclusive toc&aacute;-lo. <br /><br />O poder quase absoluto do anel corrompe o car&aacute;cter e deforma a personalidade daquele que se atreve a empunh&aacute;-lo, ainda que movido por boas inten&ccedil;&otilde;es. Quem quer que tente derrotar Sauron utilizando o anel, acabar&aacute; tornando-se o pr&oacute;ximo Senhor do Escuro.<br /><br /></p>\r\n<p>Dada a impossibilidade de utilizar o Um Anel como arma de guerra, &eacute; imposta a tarefa de lev&aacute;-lo at&eacute; a <a title=\"Montanha da Perdi&ccedil;&atilde;o\" href=\"http://pt.wikipedia.org/wiki/Montanha_da_Perdi%C3%A7%C3%A3o\">Montanha da Perdi&ccedil;&atilde;o</a>, um vulc&atilde;o localizado no centro de Mordor, a Terra Negra do Inimigo, onde o anel fora forjado e tamb&eacute;m o &uacute;nico lugar onde poderia ser destru&iacute;do.<br /><br />Confira o trailer abaixo:</p>\r\n<p><iframe src=\"http://www.youtube.com/embed/A5DjZXOe1G0\" frameborder=\"0\" width=\"768\" height=\"576\"></iframe></p>', '2012-09-08', 'o-senhor-dos-aneis'),
(14, 'Os Smurfs 2 ganha seu primeiro pÃ´ster', '<p>Na trama, Gargamel (<strong>Hank Azaria</strong>) cria os Naughties - Vexy (voz de&nbsp;<strong>Christina Ricci</strong>) e Hackus (<strong>J.B. Smoove</strong>) - com a esperan&ccedil;a de conseguir a ess&ecirc;ncia dos Smurfs. S&oacute; um Smurf pode dar o que o feiticeiro quer, por&eacute;m, e Smurfette&nbsp;conhece&nbsp;uma f&oacute;rmula capaz de transformar um Naughty em um Smurf azul de verdade. Gargamel ent&atilde;o rapta Smurfette e a leva a Paris - onde ele &eacute; adorado por milh&otilde;es como o maior mago do mundo - e cabe aos outros Smurfs salvar sua companheira.<br /><br /></p>\r\n<p><strong>Neil Patrick Harris</strong>,&nbsp;<strong>Jayma Mays</strong>&nbsp;e&nbsp;<strong>Sofia Vergara</strong>&nbsp;tamb&eacute;m retornar&atilde;o aos seus pap&eacute;is humanos.&nbsp;<em>Smurfs 2</em>&nbsp; chegar&aacute; aos&nbsp;cinemas&nbsp;em 2 de agosto de 2013, com&nbsp;<strong>Raja Gosnell&nbsp;</strong>de volta ao posto de&nbsp;diretor.</p>', '2012-09-24', 'os-smurfs-2-ganha-seu-primeiro-poster'),
(15, 'O Voo | Drama com Denzel Washington ganha um novo trailer', '<p><span>Depois de uma d&eacute;cada trabalhando com anima&ccedil;&otilde;es com captura de movimento -&nbsp;</span><em>O Expresso Polar</em><span>,&nbsp;</span><em>A Lenda de Beowulf</em><span>,&nbsp;</span><em>Os Fantasmas de Scrooge</em><span>&nbsp;-&nbsp;</span><strong>Robert Zemeckis</strong><span>&nbsp;volta ao live-action em</span><strong><em>O Voo&nbsp;</em></strong><span>(</span><em>Flight</em><span>), drama protagonizado por&nbsp;</span><strong>Denzel Washington</strong><span>. Um novo trailer do filme acaba de sai:</span></p>\r\n<p><span>&nbsp;</span></p>\r\n<p><iframe src=\"http://www.youtube.com/embed/R1lTOYC5zP4\" frameborder=\"0\" width=\"750\" height=\"422\"></iframe></p>', '2012-10-11', 'o-voo-|-drama-com-denzel-washington-ganha-um-novo-trailer');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`administradores_id`);

--
-- Índices para tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categorias_id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`clientes_id`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentarios_id`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`contato_id`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD UNIQUE KEY `filmes_id` (`filmes_id`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`fotos_id`);

--
-- Índices para tabela `locacoes`
--
ALTER TABLE `locacoes`
  ADD PRIMARY KEY (`locacoes_id`);

--
-- Índices para tabela `locacoes_cliente`
--
ALTER TABLE `locacoes_cliente`
  ADD PRIMARY KEY (`locacoes_cliente_id`);

--
-- Índices para tabela `locados`
--
ALTER TABLE `locados`
  ADD PRIMARY KEY (`locados_id`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Índices para tabela `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`meses_id`);

--
-- Índices para tabela `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`noticias_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `administradores_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categorias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `clientes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentarios_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `contato_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `filmes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `fotos_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locacoes`
--
ALTER TABLE `locacoes`
  MODIFY `locacoes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `locacoes_cliente`
--
ALTER TABLE `locacoes_cliente`
  MODIFY `locacoes_cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `locados`
--
ALTER TABLE `locados`
  MODIFY `locados_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `meses`
--
ALTER TABLE `meses`
  MODIFY `meses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `noticias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
