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
 * Servlet implementation class controladorProductos
 */
@WebServlet("/ServletControladorProductos")
public class ServletControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoProducto dao=new DaoProducto();
	   List<Productos> lst = new ArrayList<Productos>();
    public ServletControladorProductos() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion=request.getParameter("accion");
    	lst=dao.listar();
    	switch(accion) {
    	case "ejemplo":
    		break;
		default:
			lst=dao.listar();
			request.setAttribute("productos",lst);
			request.getRequestDispatcher("Vista/productosCliente.jsp").forward(request, response);
    	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
