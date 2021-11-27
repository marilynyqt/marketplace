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
import integrador.Modelo.DaoPersona;

/**
 * Servlet implementation class ControladorPersonas
 */
@WebServlet("/ControladorPersonas")
public class ControladorPersonas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControladorPersonas() {
		super();
		// TODO Auto-generated constructor stub
	}

	Persona p = new Persona();
	DaoPersona dao = new DaoPersona();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String accion = request.getParameter("accion");
		switch (accion) {
		case "Listar":
			List<Persona> lista = dao.listar();
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("GestionarPersona/vistaPersonas.jsp").forward(request, response);
			break;
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
