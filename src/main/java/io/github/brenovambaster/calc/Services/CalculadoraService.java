package io.github.brenovambaster.calc.Services;

import io.github.brenovambaster.calc.models.Calculadora;
import io.github.brenovambaster.calc.models.ResultadoOperacao;

/**
 * Serviço que implementa operações matemáticas utilizando o modelo Calculadora.
 */
public class CalculadoraService {

    /**
     * Converte uma String para Double, tratando possíveis erros.
     *
     * @param valor String a ser convertida
     * @return valor em Double
     * @throws IllegalArgumentException se a string não for um número válido
     */
    public static Double converterParaDouble(String valor) {
        if (valor == null || valor.trim().isEmpty()) {
            throw new IllegalArgumentException("Valor não pode ser nulo ou vazio");
        }

        try {
            return Double.parseDouble(valor.trim());
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Valor inválido. Esperado um número: " + valor);
        }
    }

    /**
     * Realiza a operação de soma entre dois números.
     *
     * @param numero1 Primeiro número
     * @param numero2 Segundo número
     * @return Resultado da operação
     */
    public ResultadoOperacao somar(Double numero1, Double numero2) {
        validarParametros(numero1, numero2);

        Calculadora calculadora = new Calculadora();
        calculadora.setValor1(numero1);
        calculadora.setValor2(numero2);

        try {
            double resultado = calculadora.somar();
            return new ResultadoOperacao(resultado);
        } catch (Exception e) {
            return new ResultadoOperacao(e.getMessage());
        }
    }

    /**
     * Realiza a operação de subtração entre dois números.
     *
     * @param numero1 Primeiro número
     * @param numero2 Segundo número
     * @return Resultado da operação
     */
    public ResultadoOperacao subtrair(Double numero1, Double numero2) {
        validarParametros(numero1, numero2);

        Calculadora calculadora = new Calculadora();
        calculadora.setValor1(numero1);
        calculadora.setValor2(numero2);

        try {
            double resultado = calculadora.subtrair();
            return new ResultadoOperacao(resultado);
        } catch (Exception e) {
            return new ResultadoOperacao(e.getMessage());
        }
    }

    /**
     * Realiza a operação de multiplicação entre dois números.
     *
     * @param numero1 Primeiro número
     * @param numero2 Segundo número
     * @return Resultado da operação
     */
    public ResultadoOperacao multiplicar(Double numero1, Double numero2) {
        validarParametros(numero1, numero2);

        Calculadora calculadora = new Calculadora();
        calculadora.setValor1(numero1);
        calculadora.setValor2(numero2);

        try {
            double resultado = calculadora.multiplicar();
            return new ResultadoOperacao(resultado);
        } catch (Exception e) {
            return new ResultadoOperacao(e.getMessage());
        }
    }

    /**
     * Realiza a operação de divisão entre dois números.
     *
     * @param numero1 Primeiro número
     * @param numero2 Segundo número
     * @return Resultado da operação
     */
    public ResultadoOperacao dividir(Double numero1, Double numero2) {
        validarParametros(numero1, numero2);

        Calculadora calculadora = new Calculadora();
        calculadora.setValor1(numero1);
        calculadora.setValor2(numero2);

        try {
            double resultado = calculadora.dividir();
            return new ResultadoOperacao(resultado);
        } catch (IllegalArgumentException e) {
            return new ResultadoOperacao(e.getMessage());
        } catch (Exception e) {
            return new ResultadoOperacao("Erro ao realizar divisão");
        }
    }

    /**
     * Valida se os parâmetros da operação são nulos.
     *
     * @param numero1 Primeiro número
     * @param numero2 Segundo número
     * @throws IllegalArgumentException se algum dos parâmetros for nulo
     */
    private void validarParametros(Double numero1, Double numero2) {
        if (numero1 == null || numero2 == null) {
            throw new IllegalArgumentException("Os números não podem ser nulos");
        }
    }
}
