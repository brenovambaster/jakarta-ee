package io.github.brenovambaster.calc;

import java.io.IOException;

import io.github.brenovambaster.calc.Services.CalculadoraService;
import io.github.brenovambaster.calc.models.ResultadoOperacao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "calculadoraServlet", value = "/calcular")
public class CalculadoraServlet extends HttpServlet {

    private final CalculadoraService calculadoraService = new CalculadoraService();

    /**
     * Processa a requisição tanto para GET quanto para POST.
     * Obtém os parâmetros, chama o serviço adequado, e encaminha para a view.
     *
     * @param request Requisição HTTP
     * @param response Resposta HTTP
     * @throws ServletException Se ocorrer erro no servlet
     * @throws IOException Se ocorrer erro de I/O
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String numero1Str = request.getParameter("numero1");
        String numero2Str = request.getParameter("numero2");
        String operacao = request.getParameter("operacao");

        try {
            Double numero1 = CalculadoraService.converterParaDouble(numero1Str);
            Double numero2 = CalculadoraService.converterParaDouble(numero2Str);


            request.setAttribute("numero1", numero1);
            request.setAttribute("numero2", numero2);
            request.setAttribute("operacao", operacao);

            ResultadoOperacao resultado = executarOperacao(operacao, numero1, numero2);

            if (!resultado.isSucesso()) {
                request.setAttribute("mensagemErro", resultado.getErro());
                request.setAttribute("resultado", null);
            } else {
                request.setAttribute("mensagemErro", null);
                request.setAttribute("resultado", resultado.getResultado());
            }
        } catch (IllegalArgumentException e) {
            request.setAttribute("mensagemErro", e.getMessage());
            request.setAttribute("resultado", null);
        }

        request.getRequestDispatcher("/resultado.jsp").forward(request, response);
    }

    /**
     * Executa a operação selecionada.
     *
     * @param operacao Tipo de operação (+, -, *, /)
     * @param numero1 Primeiro operando
     * @param numero2 Segundo operando
     * @return Resultado da operação
     */
    private ResultadoOperacao executarOperacao(String operacao, Double numero1, Double numero2) {
        if (operacao == null || operacao.trim().isEmpty()) {
            return calculadoraService.somar(numero1, numero2); // Operação padrão
        }

        switch (operacao.trim()) {
            case "soma":
                return calculadoraService.somar(numero1, numero2);
            case "subtracao":
                return calculadoraService.subtrair(numero1, numero2);

            case "multiplicacao":
                return calculadoraService.multiplicar(numero1, numero2);
            case "divisao":
                return calculadoraService.dividir(numero1, numero2);

            default:
                return new ResultadoOperacao("Operação não suportada: " + operacao);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}