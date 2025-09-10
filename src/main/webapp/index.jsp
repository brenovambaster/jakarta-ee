<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora Web - Projeto</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome para ícones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 56px;
        }
        .feature-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-bottom: 30px;
            border: none;
            border-radius: 15px;
            overflow: hidden;
        }
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
            background-color: #e9ecef;
        }
        .hero-section {
            background: linear-gradient(135deg, #6610f2 0%, #007bff 100%);
            color: white;
            padding: 100px 0;
            margin-bottom: 50px;
            text-align: center;
        }
        .feature-icon {
            font-size: 48px;
            color: #007bff;
            margin-bottom: 20px;
        }
        footer {
            background-color: #343a40;
            color: white;
            padding: 30px 0;
            margin-top: 50px;
        }
        .nav-link {
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: #007bff !important;
        }
    </style>
</head>
<body>
    <!-- Menu de navegação -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Calculadora Web</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#inicio">Início</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#recursos">Recursos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#sobre">Sobre</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Seção de introdução -->
    <section class="hero-section" id="inicio">
        <div class="container">
            <h1 class="display-4">Calculadora Web</h1>
            <p class="lead">Uma aplicação web desenvolvida com Java Servlet para realizar operações matemáticas</p>
            <a href="#recursos" class="btn btn-light btn-lg mt-3">Explorar recursos</a>
        </div>
    </section>

    <!-- Seção de recursos -->
    <section class="py-5" id="recursos">
        <div class="container">
            <h2 class="text-center mb-5">Nossos Recursos</h2>
            <div class="row">
                <!-- Card da Calculadora -->
                <div class="col-lg-6">
                    <div class="card feature-card h-100">
                        <div class="text-center pt-4">
                            <i class="fas fa-calculator feature-icon"></i>
                        </div>
                        <div class="card-body text-center">
                            <h4 class="card-title">Calculadora Básica</h4>
                            <p class="card-text">
                                Realize operações matemáticas básicas como soma, subtração, multiplicação e divisão.
                                Interface amigável e responsiva para uso em qualquer dispositivo.
                            </p>
                            <ul class="list-group list-group-flush mb-4">
                                <li class="list-group-item">Soma</li>
                                <li class="list-group-item">Subtração</li>
                                <li class="list-group-item">Multiplicação</li>
                                <li class="list-group-item">Divisão</li>
                            </ul>
                            <a href="calculadora.jsp" class="btn btn-primary">Acessar Calculadora</a>
                        </div>
                    </div>
                </div>

                <!-- Card de Distância entre Pontos -->
                <div class="col-lg-6">
                    <div class="card feature-card h-100">
                        <div class="text-center pt-4">
                            <i class="fas fa-ruler-combined feature-icon"></i>
                        </div>
                        <div class="card-body text-center">
                            <h4 class="card-title">Cálculo de Distância</h4>
                            <p class="card-text">
                                Calcule a distância entre dois pontos no plano cartesiano utilizando a fórmula da distância euclidiana.
                                Visualize a representação gráfica dos pontos.
                            </p>
                            <ul class="list-group list-group-flush mb-4">
                                <li class="list-group-item">Cálculo de distância euclidiana</li>
                                <li class="list-group-item">Suporte a coordenadas decimais</li>
                                <li class="list-group-item">Resultado com precisão configurável</li>
                                <li class="list-group-item">Validação de entradas</li>
                            </ul>
                            <a href="distancia.jsp" class="btn btn-primary">Calcular Distância</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Sobre o projeto -->
    <section class="py-5 bg-light" id="sobre">
        <div class="container">
            <h2 class="text-center mb-4">Sobre o Projeto</h2>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-text">
                                Este projeto foi desenvolvido como uma aplicação web utilizando Java Servlets, JSP e
                                Bootstrap. O objetivo é demonstrar conceitos de desenvolvimento web com Java EE,
                                arquitetura MVC e boas práticas de programação.
                            </p>
                            <p class="card-text">
                                A aplicação segue uma arquitetura de três camadas com separação clara entre
                                apresentação, lógica de negócios e acesso a dados.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Calculadora Web</h5>
                    <p>Um projeto de demonstração para operações matemáticas</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <p>&copy;  Breno Vambáster, 2025 - Todos os direitos reservados</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Rolagem suave para links internos
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                window.scrollTo({
                    top: target.offsetTop - 56,
                    behavior: 'smooth'
                });
            });
        });
    </script>
</body>
</html>