package integrador.Controlador;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import integrador.Entidades.Persona;
import integrador.Entidades.Productos;
import integrador.Modelo.DaoProducto;


/**
 * Servlet implementation class ServletPostUsuarioNuevo
 */
@WebServlet("/ControladorProductos")
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public ControladorProductos() {
        // TODO Auto-generated constructor stub
    }

	DaoProducto dao=new DaoProducto();
	Productos p=new Productos();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	
    		 String nombre = request.getParameter("nombre");
    	        String marca = request.getParameter("marca");
    	        String especificacion = request.getParameter("especificacion");
    	        //String imagen = request.getParameter("foto");
    	        String precio = request.getParameter("precio");
    	        
    	        DaoProducto dao=new DaoProducto();
    	        dao.insertarProducto( nombre, marca, especificacion  ,Double.parseDouble(precio));
    	        request.getRequestDispatcher("Vista/exito.jsp").forward(request, response);
    	        
    }
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String accion =request.getParameter("accion");
    	
    	switch(accion) {
    	case "Listar":
    		List<Productos>lista=dao.listar();
    		request.setAttribute("listar",lista);
    		request.getRequestDispatcher("Vista/productosCliente.jsp").forward(request, response);
    		break;
    	case "Agregar":
    		 String nombre = request.getParameter("nombre");
    	        String marca = request.getParameter("marca");
    	        String especificacion = request.getParameter("especificacion");
    	        //String imagen = request.getParameter("foto");
    	        String precio = request.getParameter("precio");
    	        
    	        DaoProducto dao=new DaoProducto();
    	        dao.insertarProducto( nombre, marca, especificacion  ,Double.parseDouble(precio));
    	        request.getRequestDispatcher("Vista/exito.jsp").forward(request, response);
    		break;
    		
		default:
			request.getRequestDispatcher("ServletPostProductosNuevo?accion=Listar").forward(request, response);
    	}
	}		
    

}
