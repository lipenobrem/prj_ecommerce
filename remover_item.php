<?php
session_start();

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = $_GET['id'];
 
    if (isset($_SESSION['carrinho'][$id])) {
        unset($_SESSION['carrinho'][$id]); 
    }
}

header("Location: carrinho.php?removido=sucesso");
exit();
?>
