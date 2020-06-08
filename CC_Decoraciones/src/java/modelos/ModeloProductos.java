/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import clases.Productos;
import java.util.*;
import java.sql.*;

/**
 *
 * @author Equipo
 */
public class ModeloProductos extends Conexion {
    public ArrayList<Productos> getAllProductos(){
        ArrayList<Productos> productos = new ArrayList();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            String sql = "Select * from producto";
            ps = getConexion().prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Productos prod = new Productos();
                prod.setIdProducto(rs.getInt("idProducto"));
                prod.setNombre_Producto(rs.getString("NombreProducto"));
                prod.setStock_Producto(rs.getInt("Stock"));
                prod.setPrecio_Producto(rs.getDouble("PrecioProducto"));                
                prod.setImg_Producto(rs.getString("ImagenProducto"));
                productos.add(prod); }
                    
        }catch (Exception e){
            
        } finally{
            try{
                if(rs != null) rs.close();
                if(ps != null) ps.close();
                if(getConexion() != null) getConexion().close();
            }catch(Exception e){}
        }
        return productos;
    }
    
    public Productos getProductos(int id){
        Productos producto = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            String sql = "Select * from producto(?)";
            ps = getConexion().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                producto = new Productos(rs.getInt("idProducto"), rs.getInt("idCategoria"), rs.getString("nombre_Producto"), rs.getInt("stock_Producto"), rs.getDouble("precio_Producto"), rs.getString("img_Producto"));
            }
                    
        }catch (Exception e){
            
        } finally{
            try{
                if(rs != null) rs.close();
                if(ps != null) ps.close();
                if(getConexion() != null) getConexion().close();
            }catch(Exception e){
                
            }
        }
        return producto;
    }
    

}
