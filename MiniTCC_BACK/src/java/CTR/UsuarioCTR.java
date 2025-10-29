/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CTR;
import DAO.UsuarioDAO;
import MODEL.UsuarioMODEL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class UsuarioCTR {
    
        public void insereUsuario(String Nome,int idUsuario,String Email,String Tipo, String Telefone) {
        UsuarioMODEL gs = new UsuarioMODEL();
        gs.setidUsuario(idUsuario); //Joga na classe MODEL
        gs.setNome(Nome);
        gs.setEmail(Email);
        gs.setTelefone(Telefone);
        gs.setTipo(Tipo);
        UsuarioDAO Usuario = new UsuarioDAO();
        Usuario.insereUsuario(gs); //Passa a instância da classe
    }
    
}
