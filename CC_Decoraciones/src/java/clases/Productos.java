/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Velazquez Matias Saul
 */
public class Productos {
    private int idProducto;
    private int idCategoria;
    private String nombre_Producto;
    private int stock_Producto;
    private double precio_Producto;
    private String img_Producto;
    
    public Productos(){
        
    }

    public Productos(int aInt, int aInt0, String string, int aInt1, double aDouble, String string0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre_Producto() {
        return nombre_Producto;
    }

    public void setNombre_Producto(String nombre_Producto) {
        this.nombre_Producto = nombre_Producto;
    }

    public int getStock_Producto() {
        return stock_Producto;
    }

    public void setStock_Producto(int stock_Producto) {
        this.stock_Producto = stock_Producto;
    }

    public double getPrecio_Producto() {
        return precio_Producto;
    }

    public void setPrecio_Producto(double precio_Producto) {
        this.precio_Producto = precio_Producto;
    }

    public String getImg_Producto() {
        return img_Producto;
    }

    public void setImg_Producto(String img_Producto) {
        this.img_Producto = img_Producto;
    }
    
}
