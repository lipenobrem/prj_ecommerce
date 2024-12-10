<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body class="bg-light">
    <header class="bg-gradient-to-r from-gray-800 to-gray-600 text-white py-4">
        <div class="container text-center">
            <h1>Carrinho de Compras</h1>
        </div>
    </header>

    <main class="container mt-5">
        <div class="table-responsive">
            <?php if (isset($_GET['removido']) && $_GET['removido'] == 'sucesso'): ?>
                <div class="alert alert-success">Produto removido com sucesso!</div>
            <?php endif; ?>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Produto</th>
                        <th>Preço</th>
                        <th>Quantidade</th>
                        <th>Ação</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (!empty($_SESSION['carrinho'])): ?>
                        <?php foreach ($_SESSION['carrinho'] as $id => $item): ?>
                            <tr>
                                <td><?php echo $item['nome']; ?></td>
                                <td>R$ <?php echo number_format($item['preco'], 2, ',', '.'); ?></td>
                                <td><?php echo $item['quantidade']; ?></td>
                                <td>
                                    <a href="remover_item.php?id=<?php echo $id; ?>" class="btn btn-danger">Remover</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        <tr>
                            <td colspan="2"></td>
                            <td><strong>Total:</strong></td>
                            <td>
                                <?php
                                $total = 0;
                                foreach ($_SESSION['carrinho'] as $item) {
                                    $total += $item['preco'] * $item['quantidade'];
                                }
                                echo "R$ " . number_format($total, 2, ',', '.');
                                ?>
                            </td>
                        </tr>
                    <?php else: ?>
                        <tr>
                            <td colspan="4">Carrinho vazio.</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>

        <a href="index.php" class="btn btn-primary btn-lg">Voltar para a Página Principal</a>
    </main>

    <footer class="bg-dark text-white py-3 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 E-commerce. Todos os direitos reservados.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
