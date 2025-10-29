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
public class DenunciaMODEL {
    private int idDenuncia;
    private String descricao;
    private String foto;
    private String localizacao;
    private String data;
    private String status;
    private String idAutoridade;

    /**
     * @return the idDenuncia
     */
    public int getIdDenuncia() {
        return idDenuncia;
    }

    /**
     * @param idDenuncia the idDenuncia to set
     */
    public void setIdDenuncia(int idDenuncia) {
        this.idDenuncia = idDenuncia;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the foto
     */
    public String getFoto() {
        return foto;
    }

    /**
     * @param foto the foto to set
     */
    public void setFoto(String foto) {
        this.foto = foto;
    }

    /**
     * @return the localizacao
     */
    public String getLocalizacao() {
        return localizacao;
    }

    /**
     * @param localizacao the localizacao to set
     */
    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }

    /**
     * @return the data
     */
    public String getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the idAutoridade
     */
    public String getIdAutoridade() {
        return idAutoridade;
    }

    /**
     * @param idAutoridade the idAutoridade to set
     */
    public void setIdAutoridade(String idAutoridade) {
        this.idAutoridade = idAutoridade;
    }
}
