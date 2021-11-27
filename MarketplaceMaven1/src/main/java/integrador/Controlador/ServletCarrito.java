package integrador.Controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import integrador.Entidades.Carrito;
import integrador.Entidades.Productos;
import integrador.Modelo.DaoProducto;

/**
 * Servlet implementation class ServletImagen
 */
@WebServlet("/ServletCarrito")
public class ServletCarrito extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoProducto dao = new DaoProducto();
	List<Carrito> lstcarrito = new ArrayList<>();
	List<Productos> lst = new ArrayList<>();
	Productos p = new Productos();
	int item;
	double totalPagar = 0.0;
	int cantidad = 1;
	int idp;

	public ServletCarrito() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String accion = request.getParameter("accion");
		
			lst = dao.listar();
		
		switch (accion) {
		case "AgregarCarrito":
			Carrito car = new Carrito();
			int pos = 0;
			idp = Integer.parseInt(request.getParameter("id"));
			p = dao.listarID(idp);
			if (lstcarrito.size() > 0) {
				for (int i = 0; i < lstcarrito.size(); i++) {
					if (idp == lstcarrito.get(i).getIdProducto()) {
						pos = i;
					}
				}
				if (idp == lstcarrito.get(pos).getIdProducto()) {
					cantidad = lstcarrito.get(pos).getCantidad() + cantidad;
					double subtotal = lstcarrito.get(pos).getPrecioCompra() * cantidad;
					lstcarrito.get(pos).setCantidad(cantidad);
					lstcarrito.get(pos).setSubTotal(subtotal);
				} else {
					item = item + 1;
					car = new Carrito();
					car.setItem(item);
					car.setIdProducto(p.getId());
					car.setNombres(p.getNombre());
					car.setDescripcion(p.getEspecificacion());
					car.setPrecioCompra(p.getPrecio());
					car.setCantidad(cantidad);
					car.setSubTotal(cantidad * p.getPrecio());
					lstcarrito.add(car);
				}
			} else {
				item = item + 1;

				car.setItem(item);
				car.setIdProducto(p.getId());
				car.setNombres(p.getNombre());
				car.setDescripcion(p.getEspecificacion());
				car.setPrecioCompra(p.getPrecio());
				car.setCantidad(cantidad);
				car.setSubTotal(cantidad * p.getPrecio());
				lstcarrito.add(car);
			}

			request.setAttribute("contador", lstcarrito.size());
			request.getRequestDispatcher("ServletControladorProductos").forward(request, response);
			break;
		case "Comprar":
			idp = Integer.parseInt(request.getParameter("id"));
			p = dao.listarID(idp);
			item = item + 1;
			car = new Carrito();
			car.setItem(item);
			car.setIdProducto(p.getId());
			car.setNombres(p.getNombre());
			car.setDescripcion(p.getEspecificacion());
			car.setPrecioCompra(p.getPrecio());
			car.setCantidad(cantidad);
			car.setSubTotal(cantidad * p.getPrecio());
			lstcarrito.add(car);
			for (int i = 0; i < lstcarrito.size(); i++) {
				totalPagar = totalPagar + lstcarrito.get(i).getSubTotal();
			}
			request.setAttribute("totalPagar", totalPagar);

			request.setAttribute("carrito", lstcarrito);
			request.setAttribute("contador", lstcarrito.size());
			request.getRequestDispatcher("Vista/carrito.jsp").forward(request, response);
			break;
		case "Eliminar":
			int idproducto = Integer.parseInt(request.getParameter("idp"));
			for (int i = 0; i < lstcarrito.size(); i++) {
				if (lstcarrito.get(i).getIdProducto() == idproducto) {
					lstcarrito.remove(i);
				}
			}
			request.getRequestDispatcher("ServletCarrito?accion=Carrito").forward(request, response);
			break;
		case "ActualizarCantidad":
			int idpro=Integer.parseInt(request.getParameter("idp"));
			int can=Integer.parseInt(request.getParameter("Cantidad"));
			for (int i = 0; i < lstcarrito.size(); i++) {
				if(lstcarrito.get(i).getIdProducto()==idpro) {
					lstcarrito.get(i).setCantidad(can);
					double st=lstcarrito.get(i).getPrecioCompra()*can;
					lstcarrito.get(i).setSubTotal(st);
				}
				
			}
			break;
		case "Carrito":
			totalPagar = 0;
			request.setAttribute("carrito", lstcarrito);
			for (int i = 0; i < lstcarrito.size(); i++) {
				totalPagar = totalPagar + lstcarrito.get(i).getSubTotal();
			}
			request.setAttribute("totalPagar", totalPagar);
			request.getRequestDispatcher("Vista/carrito.jsp").forward(request, response);
			break;
		default:
			request.setAttribute("productos", lst);
			request.getRequestDispatcher("Vista/productosCliente.jsp");
		}

	}

}
