package io.github.brenovambaster.calc.models;

public class Calculadora {
    private double valor1;
    private double valor2;

    private double resultado;

    public Calculadora() {
    }

    public Calculadora(double valor1, double valor2, String operacao) {
        this.valor1 = valor1;
        this.valor2 = valor2;
    }

    public double somar() {
        resultado = valor1 + valor2;
        return resultado;
    }

    public double subtrair() {
        resultado = valor1 - valor2;
        return resultado;
    }

    public double multiplicar() {
        resultado = valor1 * valor2;
        return resultado;
    }

    public double dividir() {
        if (valor2 == 0) {
            throw new IllegalArgumentException("Divisão por zero não é permitida.");
        }
        resultado = valor1 / valor2;
        return resultado;
    }

    public double getValor1() {
        return valor1;
    }

    public void setValor1(double valor1) {
        this.valor1 = valor1;
    }

    public double getValor2() {
        return valor2;
    }

    public void setValor2(double valor2) {
        this.valor2 = valor2;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
}
