package integrador.Controlador;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import integrador.Entidades.Persona;
import integrador.Modelo.DaoPersona;



/**
 * Servlet implementation class ServletPostUsuarioNuevo
 */
@WebServlet("/RegistrarPersonas")
public class RegistrarPersonas extends HttpServlet {
	private static final long serialVersionUID = 1L;

    Persona p=new Persona();
    DaoPersona dao=new DaoPersona();
    public RegistrarPersonas() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int rol1;
    	int dis=0;
    	String nombre = request.getParameter("nombre");
        String apellp = request.getParameter("apellido-paterno");
        String apellm = request.getParameter("apellido-materno");
        String dni = request.getParameter("dni");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono"); 
        String rol = request.getParameter("rol"); 
        String distrito = request.getParameter("distrito"); 
        if(rol.equalsIgnoreCase("Cliente")) {
        	 rol1=1;
        }else {
        	rol1=2;
        }
        
        switch(distrito) {
        case "Cerro Colorado": dis=1;
        case "Hunter":dis=2;
        case "Cayma":dis=3;
        case "Miraflores":dis=4;
        case "Yura":dis=5;
        case "Yanahuara":dis=6;
        case "La Joya":dis=7;
        case "Alto Selva Alegre":dis=8;
        case "Mariano Melgar":dis=9;
        }
        p.setNombre(nombre);
        p.setApellido_paterno(apellp);
        p.setApellido_materno(apellm);
        p.setCorreo(correo);
        p.setPassword(password);
        p.setDireccion(direccion);
        p.setTelefono(Integer.parseInt(telefono));
        p.setDni(Integer.parseInt(dni));
        p.setRol(rol1);
        p.setDistrito(dis);
        
        dao.agregar(p);
        
        request.getRequestDispatcher("/Vista/exito.jsp").forward(request, response);
        
    }

		
	

}
