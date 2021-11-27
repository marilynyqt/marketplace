package integrador.Controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import integrador.Entidades.Productos;
import integrador.Modelo.DaoProducto;



/**
 * Servlet implementation class ServletImagen
 */
@WebServlet("/ServletImagen")
public class ServletImagen extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public ServletImagen() {
        // TODO Auto-generated constructor stub
    }
   DaoProducto dao=new DaoProducto();
   Productos p=new Productos();
   
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		dao.listarImg(id, response);
    	}
	

}
