/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.*;

/**
 *
 * @author Velazquez Matias Saul
 */
public class Conexion {
    public static Connection getConexion() throws SQLException, ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/cc_decoraciones";
            String usuario = "root";
            String password = "n0m3l0";
            
            return DriverManager.getConnection(url, usuario, password);
            
        }catch(SQLException ex){
            System.out.println("Error en la BD");
            ex.printStackTrace();
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("No se coencto bien a la BD");
        }
        
        return null;
    }
}
