/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Alunos
 */
public class ConexaoDAO {
    public static String status = "Nao conectou...";
    
public static java.sql.Connection getConexaoMySQL(){
    
    Connection connection = null;
    
    try{
        /// Crregando o JDBC Driver padão
        
        String driverName = "com.mysql.jdbc.Driver";
        
        Class.forName(driverName);
        
        // Configurando a nossa coneção com um banco de dados//
        
        String serverName = "localhost";//caminho do servidor do BD
     
        String mydatabase = "minitcc";//caminho do seu banco de dados
        
        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
        
        String username = "root";//nome doe um usuário de seu BD
        
        String password = "";//sua senha de acesso
        
        connection = DriverManager.getConnection(url, username, password); //testa sua conexão//
        
        if (connection != null){
             status = ("STATUS--->Conectado com sucesso!");
            
        }else{
            status = ("STATUS---> Não foi possivel realizar conexão");
        }
        return connection;
        
    } catch (ClassNotFoundException e){
        System.out.println("o driver especificado nao foi encontrado");
        
        return null;
         } catch (SQLException e) {
             System.out.println("Nao foi possivel conectar ao Banco de Dados");
             
             return null;
    }
}     
  public static String statusConection(){
      return status;
  }   
  //Método que fecha sua conexão//
  public static boolean FecharConexao(){
      try{
          
          ConexaoDAO.getConexaoMySQL().close();
          
          return true;
          
      }catch (SQLException e){
          
          return false;
      }
  }
  //Método que reinicia sua conexão//
  
  public static java.sql.Connection ReiniciarConexao(){
      FecharConexao();
      return ConexaoDAO.getConexaoMySQL();
  }

}
