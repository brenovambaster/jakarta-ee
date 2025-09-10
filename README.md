# Calculadora e Distância (Servlets + JSP)

[![Maven Wrapper](https://img.shields.io/badge/mvnw-available-brightgreen)](https://maven.apache.org/)
[![Java](https://img.shields.io/badge/Java-11%2B-blue)](https://adoptium.net/)
[![License](https://img.shields.io/badge/license-Unlicensed-lightgrey)](#)

Breve projeto de exemplo em Java (Servlets + JSP) que implementa duas funcionalidades:

- Uma calculadora simples (soma) com validação e separação de responsabilidades.
- Cálculo da distância euclidiana entre dois pontos (Ponto A e Ponto B).

A interface usa Bootstrap para um layout responsivo e simples.

## O que foi feito

- Implementados servlets para orquestrar requisições HTTP (CalculadoraServlet e DistanciaServlet).
- Separação da lógica de negócio em um service (CalculadoraService) para validação e soma.
- Modelo Ponto com cálculo de distância e arredondamento configurável.
- Páginas JSP (index, calculadora, distancia, resultado) com Bootstrap.
- Tratamento de entradas inválidas e mensagens de erro na interface.

## Funcionalidades

- Somar dois números informados pelo usuário (GET e POST são suportados).
- Calcular a distância entre dois pontos (X, Y) e mostrar o resultado na mesma página.
- Validação de entrada (evita usar exceções como fluxo de controle no service).

## Estrutura relevante do projeto

- src/main/java/io/github/brenovambaster/calc/
    - CalculadoraServlet.java
    - DistanciaServlet.java
    - Services/CalculadoraService.java
    - models/Calculadora.java
    - models/Ponto.java
    - models/ResultadoOperacao.java

- src/main/webapp/
    - index.jsp (página de apresentação inicial)
    - calculadora.jsp
    - distancia.jsp
    - resultado.jsp
    - WEB-INF/web.xml

## Pré-requisitos

- Java 11 ou superior
- Maven (ou usar o wrapper incluso)
- Contêiner Servlet (WildFly)

## Como executar

1. Compilar e empacotar (Windows):

   mvnw.cmd package

   Ou (Linux/macOS):

   ./mvnw package

2. Deploy do WAR gerado em `target/` no seu servlet container (ex.: copiar `target/calc-1.0-SNAPSHOT.war` para a pasta
   `webapps/` do Tomcat e iniciar o Tomcat).

3. Acessar no navegador:

    - Página inicial: http://localhost:8080/<context>/index.jsp
    - Calculadora: formulário disponível na página inicial (envia para `/calcular`)
    - Distância: formulário disponível em `/distancia.jsp` (envia para `/calcularDistancia`)

Obs.: Se usar IDE (IntelliJ/Eclipse) com Tomcat integrado, importe o projeto como Maven e rode diretamente.

## Endpoints importantes

- POST/GET /calcular — CalculadoraServlet (somar dois valores)
- POST/GET /calcularDistancia — DistanciaServlet (calcula distância entre dois pontos)

## Boas práticas aplicadas

- Separação de responsabilidades: lógica de negócio está em services, servlets apenas orquestram.
- Validação de entrada antes de conversão (regex em CalculadoraService).
- Uso de BigDecimal para operações numéricas quando necessário.
- JSPs mantêm pouca lógica; apresentação e formatação são feitas na view.

## Possíveis melhorias

- Adicionar testes unitários (JUnit) para Services e models.
- Suporte a locales (vírgula como separador decimal) na validação e apresentação.
- Externalizar configurações (número de casas decimais, mensagens) para properties.
- Adicionar logging e tratamento de exceções centralizado.

## Contribuição

Fork, crie uma branch feature e envie um pull request. Abra issues para bugs ou melhorias.
