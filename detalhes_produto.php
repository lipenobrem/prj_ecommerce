<?php
session_start();
include 'db/database.php';

$id = $_GET['id'] ?? null;
if ($id) {
    $query = "SELECT * FROM produtos WHERE id = $id";
    $result = $conn->query($query);
    $produto = $result->fetch_assoc();

    if (!$produto) {
        header("Location: index.php");
        exit();
    }
} else {
    header("Location: index.php");
    exit();
}

if (isset($_POST['adicionar'])) {
    $idProduto = $produto['id'];
    $_SESSION['carrinho'][$idProduto] = [
        'nome' => $produto['nome'],
        'preco' => $produto['preco'],
        'imagem' => $produto['imagem'],
        'quantidade' => 1
    ];
    header("Location: carrinho.php");
    exit();
}
$relacionados_query = "SELECT * FROM produtos ORDER BY RAND() LIMIT 9"; 
$relacionados_result = $conn->query($relacionados_query);
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $produto['nome']; ?></title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        .product-card {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;
        }
        .product-card img {
            object-fit: cover;
            height: 250px;
        }
        .card-body {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .product-details {
            max-width: 900px;
            margin: 0 auto;
        }
        .related-products .card {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;
        }
        .related-products .card img {
            object-fit: cover;
            height: 450px;
        }

        .product-card, .related-product-card {
            height: 100%;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .product-card:hover, .related-product-card:hover {
            transform: scale(1.05);
        }

        .card {
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            background-color: #f8f9fa;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
            color: #333;
        }

        .card-text {
            font-size: 1.125rem;
            color: #666;
        }

        .card-img-top {
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
        }
    </style>
</head>
<body class="bg-light">

    <header class="bg-gradient-to-r from-gray-800 to-gray-600 text-white py-4">
        <div class="container text-center">
            <h1><?php echo $produto['nome']; ?></h1>
        </div>
    </header>

    <main class="container mt-5">
        <div class="row product-details">
            <div class="col-md-12 mb-4">
                <div class="card shadow-lg">
                    <div class="row no-gutters">
                        <div class="col-md-6">
                            <img src="<?php echo $produto['imagem']; ?>" class="card-img" alt="<?php echo $produto['nome']; ?>" style="height: 300px; width: 200; object-fit: contain;">
                        </div>
                        <div class="col-md-6">
                            <div class="card-body">
                                <h3 class="card-title"><?php echo $produto['nome']; ?></h3>
                                <p><strong>Preço:</strong> R$ <?php echo number_format($produto['preco'], 2, ',', '.'); ?></p>
                                <p><strong>Descrição:</strong> <?php echo $produto['descricao']; ?></p>
                                <form method="POST">
                                    <button type="submit" name="adicionar" class="btn btn-success btn-lg mb-3">Adicionar ao Carrinho</button>
                                </form>
                                <a href="index.php" class="btn btn-dark btn-lg">Voltar para a Página Principal</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <h3 class="mb-4">Produtos Relacionados</h3>
                <div class="row related-products">
                    <?php while ($produto_relacionado = $relacionados_result->fetch_assoc()) { ?>
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm related-product-card">
                                <img src="<?php echo $produto_relacionado['imagem']; ?>" class="card-img-top" alt="<?php echo $produto_relacionado['nome']; ?>" style="height: 200px; object-fit: contain;">
                                <div class="card-body">
                                    <h5 class="card-title"><?php echo $produto_relacionado['nome']; ?></h5>
                                    <p class="card-text">R$ <?php echo number_format($produto_relacionado['preco'], 2, ',', '.'); ?></p>
                                    <a href="detalhes_produto.php?id=<?php echo $produto_relacionado['id']; ?>" class="btn btn-secondary btn-block">Ver detalhes</a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
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
