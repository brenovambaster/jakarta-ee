package io.github.brenovambaster.calc.models;

/**
 * Classe que representa o resultado de uma operação matemática.
 * Encapsula tanto o resultado quanto possíveis mensagens de erro.
 */
public class ResultadoOperacao {
    private final Double resultado;
    private final String erro;
    private final boolean sucesso;

    /**
     * Construtor para caso de sucesso.
     *
     * @param resultado O resultado da operação
     */
    public ResultadoOperacao(Double resultado) {
        this.resultado = resultado;
        this.erro = null;
        this.sucesso = true;
    }

    /**
     * Construtor para caso de erro.
     *
     * @param mensagemErro A mensagem de erro
     */
    public ResultadoOperacao(String mensagemErro) {
        this.resultado = null;
        this.erro = mensagemErro;
        this.sucesso = false;
    }

    /**
     * @return o resultado da operação ou null se ocorreu erro
     */
    public Double getResultado() {
        return resultado;
    }

    /**
     * @return mensagem de erro ou null se a operação foi bem-sucedida
     */
    public String getErro() {
        return erro;
    }

    /**
     * @return true se a operação foi bem-sucedida, false caso contrário
     */
    public boolean isSucesso() {
        return sucesso;
    }
}

