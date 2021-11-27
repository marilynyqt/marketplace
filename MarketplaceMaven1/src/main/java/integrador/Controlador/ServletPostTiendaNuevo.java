package integrador.Controlador;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import integrador.Modelo.DaoTienda;


/**
 * Servlet implementation class ServletPostUsuarioNuevo
 */
@WebServlet("/ServletPostTiendaNuevo")
public class ServletPostTiendaNuevo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletPostTiendaNuevo() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String razon = request.getParameter("razon-social");
        String direccion = request.getParameter("direccion");
        String ruc = request.getParameter("ruc");
        String tatitud = request.getParameter("tatitud");
        String longitud= request.getParameter("longitud");        
        
        DaoTienda dao=new DaoTienda();
        dao.insertarTienda(razon,direccion,Integer.parseInt(ruc),Double.parseDouble(tatitud),Double.parseDouble(longitud));
        
        request.getRequestDispatcher("Vista/exito.jsp").forward(request, response);
    }

		
	

}
