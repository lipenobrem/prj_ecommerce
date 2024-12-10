<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f0f4f8;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-control {
            border-radius: 4px;
        }

        .btn-success {
            width: 100%;
            padding: 10px;
            font-size: 16px;
        }

        .btn-secondary {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #6c757d;
            border: none;
            border-radius: 4px;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .footer-links {
            text-align: center;
            margin-top: 20px;
        }

        .footer-links a {
            text-decoration: none;
            color: #007bff;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Cadastro</h1>
        <form method="POST" action="processa_cadastro.php">
            <div class="form-group">
                <input type="text" name="nome" placeholder="Nome" required class="form-control">
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email" required class="form-control">
            </div>
            <div class="form-group">
                <input type="password" name="senha" placeholder="Senha" required class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Cadastrar</button>
        </form>

        <div class="footer-links">
            <p>Já tem uma conta? <a href="login.php">Faça login aqui</a></p>
            <p><a href="javascript:history.back()" class="btn-secondary">Voltar</a></p>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
