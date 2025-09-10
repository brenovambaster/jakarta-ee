package io.github.brenovambaster.calc;

import java.io.IOException;

import io.github.brenovambaster.calc.models.Ponto;
import io.github.brenovambaster.calc.models.ResultadoOperacao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "distanciaServlet", value = "/calcularDistancia")
public class DistanciaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String coordenadaAx = request.getParameter("coordenadaAx");
        String coordenadaAy = request.getParameter("coordenadaAy");
        String coordenadaBx = request.getParameter("coordenadaBx");
        String coordenadaBy = request.getParameter("coordenadaBy");


        request.setAttribute("coordenadaAx", coordenadaAx);
        request.setAttribute("coordenadaAy", coordenadaAy);
        request.setAttribute("coordenadaBx", coordenadaBx);
        request.setAttribute("coordenadaBy", coordenadaBy);

        try {

            Ponto pontoA = new Ponto();
            pontoA.setX(Double.parseDouble(coordenadaAx));
            pontoA.setY(Double.parseDouble(coordenadaAy));

            Ponto pontoB = new Ponto();
            pontoB.setX(Double.parseDouble(coordenadaBx));
            pontoB.setY(Double.parseDouble(coordenadaBy));

            // Calcular a distância utilizando o método da classe Ponto
            double distancia = pontoA.distancia(pontoB);


            String resultado = String.format("%.2f", distancia);
            request.setAttribute("resultado", resultado);

        } catch (NumberFormatException e) {
            request.setAttribute("mensagemErro", "Entrada inválida: verifique as coordenadas.");
        } catch (IllegalArgumentException e) {
            request.setAttribute("mensagemErro", e.getMessage());
        } catch (Exception e) {
            request.setAttribute("mensagemErro", "Erro ao calcular a distância: " + e.getMessage());
        }


        request.getRequestDispatcher("/distancia.jsp").forward(request, response);
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
