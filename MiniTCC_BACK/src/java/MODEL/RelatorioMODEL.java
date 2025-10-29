/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author Alunos
 */
public class RelatorioMODEL {
    private int idRelatorio;
    private int idAutoridade;
    private String dataGeracao;
    private String tipoRelatorio;
    private String conteudo;

    /**
     * @return the idRelatorio
     */
    public int getIdRelatorio() {
        return idRelatorio;
    }

    /**
     * @param idRelatorio the idRelatorio to set
     */
    public void setIdRelatorio(int idRelatorio) {
        this.idRelatorio = idRelatorio;
    }

    /**
     * @return the idAutoridade
     */
    public int getIdAutoridade() {
        return idAutoridade;
    }

    /**
     * @param idAutoridade the idAutoridade to set
     */
    public void setIdAutoridade(int idAutoridade) {
        this.idAutoridade = idAutoridade;
    }

    /**
     * @return the dataGeracao
     */
    public String getDataGeracao() {
        return dataGeracao;
    }

    /**
     * @param dataGeracao the dataGeracao to set
     */
    public void setDataGeracao(String dataGeracao) {
        this.dataGeracao = dataGeracao;
    }

    /**
     * @return the tipoRelatorio
     */
    public String getTipoRelatorio() {
        return tipoRelatorio;
    }

    /**
     * @param tipoRelatorio the tipoRelatorio to set
     */
    public void setTipoRelatorio(String tipoRelatorio) {
        this.tipoRelatorio = tipoRelatorio;
    }

    /**
     * @return the conteudo
     */
    public String getConteudo() {
        return conteudo;
    }

    /**
     * @param conteudo the conteudo to set
     */
    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }
}
