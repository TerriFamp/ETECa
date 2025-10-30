/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.UsuarioMODEL;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


/**
 *
 * @author Alunos
 */
public class UsuarioDAO {
     private Connection con; //Variavel de Conexão
    private PreparedStatement mysql; //Variavel para preparar espaço para preenchimento no BD
    private Statement st; //Organizar as pesquisas(UPPER ou LOWER) 

    public void insereUsuario(UsuarioMODEL gs) {
        ConexaoDAO cb = new ConexaoDAO();
        con = (cb.getConexaoMySQL());

        String sql = "insert into Usuario (Nome,IdUsuario,Email,Tipo,Telefone) values(?,?,?,?,?)";

        try {
            mysql = con.prepareStatement(sql);
            mysql.setString(1, gs.getNome());
            mysql.setInt(2,gs.getIdUsuario());
            mysql.setString(3,gs.getEmail());
            mysql.setString(4,gs.getTipo());
            mysql.setString(5,gs.getTelefone());
            mysql.executeUpdate();
            
            
        } catch (SQLException | HeadlessException e) {
            System.out.println(e.getMessage());
        }

    }
    
}
