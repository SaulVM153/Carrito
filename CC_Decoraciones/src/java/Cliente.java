/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Velazquez Matias Saul
 */

import java.sql.*;
import java.util.Calendar;
import modelos.Conexion;

public class Cliente {
    
    private int idCliente;
    private String nombreCliente;
    private String apellidoCliente;
    private String userCliente;
    private String passwordCliente;
    private Date fecha_nacimientoCliente;
    private String telefonoCliente;    
    
    public Cliente(){
        
    }
    
    public Cliente verificarUsuario(String user, String contrasena) throws SQLException, ClassNotFoundException{
        Cliente c = null;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        
        try{            
            cn = Conexion.getConexion();
            String q;
            q = "Select * from cliente where UserCiente = ? AND PasswordCliente = ?";            
            pr = cn.prepareStatement(q);
            pr.setString(1, user);
            pr.setString(2, contrasena);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                c = new Cliente(); 
                c.setIdCliente(rs.getInt("idCliente"));
                c.setNombreCliente(rs.getString("NombreCliente"));
                c.setApellidoCliente(rs.getString("ApellidoCliente"));
                c.setUserCliente(rs.getString("UserCliente"));
                c.setPasswordCliente(rs.getString("PasswordCliente"));
                c.setFecha_nacimientoCliente(rs.getDate("FechaNacimiento"));
                c.setTelefonoCliente(rs.getString("TelefonoCliente"));
                
                break;
            } 
        
        }   catch(SQLException ex){
                ex.printStackTrace();
                c = null;
        } finally {
            try{
                rs.close();
                pr.close();
                cn.close();
            } catch (SQLException ex){
                ex.printStackTrace();
            }
        }
        return c;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public String getUserCliente() {
        return userCliente;
    }

    public void setUserCliente(String userCliente) {
        this.userCliente = userCliente;
    }

    public String getPasswordCliente() {
        return passwordCliente;
    }

    public void setPasswordCliente(String passwordCliente) {
        this.passwordCliente = passwordCliente;
    }

    public Date getFecha_nacimientoCliente() {
        return fecha_nacimientoCliente;
    }

    public void setFecha_nacimientoCliente(Date fecha_nacimientoCliente) {
        this.fecha_nacimientoCliente = fecha_nacimientoCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }  
    
}
