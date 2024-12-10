<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Início - E-commerce</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body class="bg-light">
    <header class="bg-gradient-to-r from-gray-800 to-gray-600 text-white py-4">
        <div class="container">
            <h1 class="text-center">Bem vindo a nossa loja!</h1>
        </div>
    </header>

    <nav class="bg-dark navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.php">Início</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="carrinho.php">Carrinho</a></li>
                    <?php if (isset($_SESSION['usuario_id']) && isset($_SESSION['nome_usuario'])): ?>
                        <li class="nav-item"><span class="nav-link">Olá, <?php echo htmlspecialchars($_SESSION['nome_usuario']); ?></span></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                    <?php else: ?>
                        <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="cadastro.php">Cadastro</a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container mt-4">
        <h2 class="text-center mb-4">Lista de Produtos</h2>
        <div class="row">
            <?php
            include 'db/database.php';
            $query = "SELECT * FROM produtos";
            $result = $conn->query($query);
            while ($row = $result->fetch_assoc()):
            ?>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card shadow-lg border-light rounded">
                        <img src="<?php echo $row['imagem']; ?>" class="card-img-top" alt="<?php echo $row['nome']; ?>" style="height: 200px; object-fit: contain;">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row['nome']; ?></h5>
                            <p class="card-text">Preço: R$ <?php echo number_format($row['preco'], 2, ',', '.'); ?></p>
                            <a href="detalhes_produto.php?id=<?php echo $row['id']; ?>" class="btn btn-secondary btn-block">Ver detalhes</a>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
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
