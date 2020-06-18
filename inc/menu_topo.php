<ul>
    <li><a href="http://localhost/ProjetoLocadora">Ínicio</a></li>
    <?php
    $menus = listar("menus","where menus_visivel = 'habilitado'");
    $m = new ArrayIterator($menus);
    while ($m->valid()):
        ?>
        <li><a href="http://localhost/ProjetoLocadora/<?php echo $m->current()->menus_slug; ?>"><?php echo $m->current()->menus_nome; ?></a></li>
        <?php
        $m->next();
    endwhile;
    ?>
    <li id="pedido_link">
        <a href="http://localhost/ProjetoLocadora/" rel="/modulos/listar/listar_filmes_locados.php">
            Ver Pedido - <?php echo isset($_SESSION['locar']) ? "(" . count($_SESSION['locar']) . ") filmes" : '(0) filmes'; ?>
        </a>
    </li>
</ul>

<!--
   <li><a href="http://localhost/ProjetoLocadora/lancamentos">Lançamentos</a></li>
    <li><a href="http://localhost/ProjetoLocadora/noticias">Notícias</a></li>
    <li><a href="http://localhost/ProjetoLocadora/minha_conta">Minha Conta</a></li>
    <li><a href="http://localhost/ProjetoLocadora/contato">Contato</a></li>
    <li><a href="http://localhost/ProjetoLocadora/cadastro">Cadastro</a></li>
    <li><a href="http://localhost/ProjetoLocadora/meus_filmes">Meus Filmes</a></li>
-->