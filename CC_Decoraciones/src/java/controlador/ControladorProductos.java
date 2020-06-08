/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import clases.Productos;
import modelos.ModeloProductos;

/**
 *
 * @author Velazquez Matias Saul
 */
public class ControladorProductos {

    public String getProductos() {
        ModeloProductos mp = new ModeloProductos();
        String html = "";
        for (Productos producto : mp.getAllProductos()) {
            html += "<div class=\"col-sm-4\">\n"
                    + "	<div class=\"product-image-wrapper\">\n"
                    + "		<div class=\"single-products\">\n"
                    + "			<div class=\"productinfo text-center\">\n"
                    + "				<img src=\"" + producto.getImg_Producto() + "\" alt=\"\" />\n"
                    + "				<h2>$" + producto.getPrecio_Producto() + "</h2>\n"
                    + "				<p>" + producto.getNombre_Producto() + "</p>\n"
                    + "				<a href=\"detallesproducto.jsp?id=" + producto.getIdProducto() + "\" class=\"btn btn-default add-to-cart\">Ver detalles</a>\n"
                    + "			</div>\n"
                    + "		</div>\n"
                    + "		<div class=\"choose\">\n"
                    + "             <ul class=\"nav nav-pills nav-justified\">\n"
                    + "                 <li><a href=\"\">Añadir al carrito</a></li>\n"
                    + "             </ul>\n"
                    + "		</div>\n"
                    + "	</div>\n"
                    + "	</div>";
        }
        return html;
    }

    public Productos getProducto(int id_Producto) {
        return new ModeloProductos().getProductos(id_Producto);
    }
}

