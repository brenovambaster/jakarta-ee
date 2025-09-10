<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cálculo de Distância</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        .main-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .calculator-card {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            padding: 40px;
            width: 100%;
            max-width: 500px;
        }

        .title {
            color: #2c3e50;
            font-weight: 300;
            font-size: 1.8rem;
            margin-bottom: 30px;
            text-align: center;
        }

        .result-box {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            margin-bottom: 30px;
            font-size: 1.1rem;
            min-height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .point-section {
            margin-bottom: 25px;
        }

        .point-label {
            font-weight: 500;
            color: #495057;
            margin-bottom: 15px;
            font-size: 0.95rem;
        }

        .coordinate-inputs {
            display: flex;
            gap: 15px;
        }

        .coordinate-group {
            flex: 1;
        }

        .coordinate-label {
            display: block;
            font-size: 0.85rem;
            color: #6c757d;
            margin-bottom: 5px;
            text-align: center;
        }

        .form-control {
            border: 2px solid #e9ecef;
            border-radius: 6px;
            padding: 12px;
            font-size: 1rem;
            text-align: center;
            transition: border-color 0.2s ease;
        }

        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.15);
        }

        .btn-calculate {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            color: white;
            padding: 12px 40px;
            border-radius: 6px;
            font-weight: 500;
            font-size: 1rem;
            transition: transform 0.2s ease;
            display: block;
            margin: 30px auto 0;
        }

        .btn-calculate:hover {
            transform: translateY(-1px);
            color: white;
        }

        .formula-section {
            margin-top: 30px;
            padding-top: 25px;
            border-top: 1px solid #e9ecef;
        }

        .formula-title {
            font-size: 0.9rem;
            color: #6c757d;
            margin-bottom: 10px;
        }

        .formula-text {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 6px;
            text-align: center;
            font-family: 'Courier New', monospace;
            color: #495057;
            font-size: 0.95rem;
        }

        .point-a {
            border-left: 4px solid #007bff;
            padding-left: 15px;
        }

        .point-b {
            border-left: 4px solid #dc3545;
            padding-left: 15px;
        }
    </style>
</head>
<body>
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
<div class="main-container mt-3">
    <div class="calculator-card">
        <h1 class="title">Cálculo de Distância</h1>

        <div class="result-box">
            <%= request.getAttribute("resultado") != null ? "Distância: " + request.getAttribute("resultado") : "Insira as coordenadas dos pontos" %>
            <%= request.getAttribute("mensagemErro") != null ? request.getAttribute("mensagemErro") : "" %>
        </div>

        <form action="calcularDistancia" method="post">
            <div class="point-section point-a">
                <div class="point-label">
                    <i class="fas fa-circle text-primary"></i> Ponto A
                </div>
                <div class="coordinate-inputs">
                    <div class="coordinate-group">
                        <label class="coordinate-label">X</label>
                        <input type="number" step="0.01" class="form-control" name="coordenadaAx"
                               value="<%= request.getAttribute("coordenadaAx") != null ? request.getAttribute("coordenadaAx") : "" %>"
                               placeholder="0.00" required>
                    </div>
                    <div class="coordinate-group">
                        <label class="coordinate-label">Y</label>
                        <input type="number" step="0.01" class="form-control" name="coordenadaAy"
                               value="<%= request.getAttribute("coordenadaAy") != null ? request.getAttribute("coordenadaAy") : "" %>"
                               placeholder="0.00" required>
                    </div>
                </div>
            </div>

            <div class="point-section point-b">
                <div class="point-label">
                    <i class="fas fa-circle text-danger"></i> Ponto B
                </div>
                <div class="coordinate-inputs">
                    <div class="coordinate-group">
                        <label class="coordinate-label">X</label>
                        <input type="number" step="0.01" class="form-control" name="coordenadaBx"
                               value="<%= request.getAttribute("coordenadaBx") != null ? request.getAttribute("coordenadaBx") : "" %>"
                               placeholder="0.00" required>
                    </div>
                    <div class="coordinate-group">
                        <label class="coordinate-label">Y</label>
                        <input type="number" step="0.01" class="form-control" name="coordenadaBy"
                               value="<%= request.getAttribute("coordenadaBy") != null ? request.getAttribute("coordenadaBy") : "" %>"
                               placeholder="0.00" required>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-calculate">
                <i class="fas fa-calculator"></i> Calcular
            </button>
        </form>

        <div class="formula-section">
            <div class="formula-title">Fórmula da Distância Euclidiana:</div>
            <div class="formula-text">
                d = √[(x₂ - x₁)² + (y₂ - y₁)²]
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>