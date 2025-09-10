<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora Jakarta</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light d-flex align-items-center justify-content-center min-vh-100">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Calculadora Web</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp#inicio">Início</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp#recursos">Recursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp#sobre">Sobre</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container bg-white p-5 rounded shadow mt-3" style="max-width: 400px;">
    <h1 class="mb-4 text-center">Calculadora de Soma Simples</h1>

    <form action="calcular" method="get">
        <div class="mb-3">
            <label for="num1" class="form-label">Número 1:</label>
            <input type="number" id="num1" name="numero1" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="num2" class="form-label">Número 2:</label>
            <input type="number" id="num2" name="numero2" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="num3" class="form-label">Deseja executar qual operação ? </label>
            <select id="operacao" name="operacao" class="form-select" required>
                <option value="soma">Soma</option>
                <option value="subtracao">Subtração</option>
                <option value="multiplicacao">Multiplicação</option>
                <option value="divisao">Divisão</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100">Calcular</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>