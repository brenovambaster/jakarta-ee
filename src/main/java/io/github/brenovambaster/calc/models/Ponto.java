package io.github.brenovambaster.calc.models;

public class Ponto {
    private double x;
    private double y;

    public Ponto() {
    }

    public Ponto(double y, double x) {
        this.y = y;
        this.x = x;
    }

    public double getX() {
        return x;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }


    /**
     * @param outro
     * @return distância entre os pontos com a máxima precisão.
     * @throws IllegalArgumentException se o ponto 'outro' for nulo.
     * @brief Calcula a distância euclidiana entre dois pontos no plano 2D.
     * @details A fórmula utilizada é a raiz quadrada da soma dos quadrados das diferenças
     */
    public double distancia(Ponto outro) {
        if (outro == null) {
            throw new IllegalArgumentException("O ponto 'outro' não pode ser nulo.");
        }
        double deltaX = outro.x - this.x;
        double deltaY = outro.y - this.y;
        return Math.sqrt(deltaX * deltaX + deltaY * deltaY);

    }

    @Override
    public String toString() {
        return "Ponto{" + "x=" + x + ", y=" + y + '}';
    }
}
