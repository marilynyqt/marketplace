
package integrador.Modelo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

import integrador.Entidades.Productos;
import integrador.Utilitario.NewConexion;

public class DaoProducto {

	NewConexion cn = new NewConexion();
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public Productos listarID(int id) {
		String sql = "select  * from producto where codigo=" + id;
		Productos u = new Productos();

		ResultSet rs;

		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {

				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setMarca(rs.getString(3));
				u.setEspecificacion(rs.getString(4));
				u.setImagen(rs.getBinaryStream(5));
				u.setId_estado(rs.getInt(6));
				u.setPrecio(rs.getDouble(7));
				
			}

		} catch (Exception e) {

		}
		return u;
	}

	public List<Productos> consultarProductos() {
		List<Productos> lst = new ArrayList<>();
		String sql = "select  * from producto";
		Productos u = new Productos();

		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setMarca(rs.getString(3));
				u.setEspecificacion(rs.getString(4));
				u.setImagen(rs.getBinaryStream(5));
				u.setId_estado(rs.getInt(6));
				u.setPrecio(rs.getDouble(7));
				lst.add(u);
			}
			ps.close();
		} catch (SQLException e) {
			
		}
		return lst;
	}

	public List listar() {// para el carrito
		List<Productos> lst = new ArrayList<>();
		String sql = "select  * from producto";

		try {

			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Productos u = new Productos();
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setMarca(rs.getString(3));
				u.setEspecificacion(rs.getString(4));
				u.setImagen(rs.getBinaryStream(5));
				u.setId_estado(rs.getInt(6));
				u.setPrecio(rs.getDouble(7));				
				lst.add(u);
			}

		} 
		catch (SQLException e) 
		{
			System.out.println(e);
		}
		
		return lst;
	}

	public void listarImg(int id, HttpServletResponse response) {
		String sql = "select * from producto where codigo="+id;
		InputStream inputStream = null;
		OutputStream outputStream = null;
		BufferedInputStream bufferedInputStream = null;
		BufferedOutputStream bufferedOutputStream = null;
		response.setContentType("image/*");
		try {
			outputStream=response.getOutputStream();
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				inputStream = rs.getBinaryStream("imagen");
			}
			bufferedInputStream = new BufferedInputStream(inputStream);
			bufferedOutputStream = new BufferedOutputStream(outputStream);
			int i = 0;
			while ((i = bufferedInputStream.read()) != -1) {
				bufferedOutputStream.write(i);
			}
		} catch (Exception e) {
		}
	}

	public void insertarProducto(String nombre, String marca, String especificacion, double precio)
			 {
		String sql = "INSERT INTO producto(  nombre, marca, especificacion,  precio) VALUES (?, ?, ?, ?)";

		try {

			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();			
			ps.setString(1, nombre);
			ps.setString(2, marca);
			ps.setString(3, especificacion);
			ps.setDouble(4, precio);
			ps.execute();
			
		} catch (SQLException e) {
			
		}
	}

	public void insertarCursoPorId(Productos cursoNuevo)  {
		String sql = "insert into cursos( nombre, marca, especificacion,  precio) values (?, ?, ?, ?)";

		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			ps.setInt(1, cursoNuevo.getId());
			ps.setString(2, cursoNuevo.getNombre());
			ps.setString(3, cursoNuevo.getMarca());
			ps.setString(4, cursoNuevo.getEspecificacion());
			ps.setDouble(5, cursoNuevo.getPrecio());
			ps.execute();
			
		} catch (SQLException e) {
			
		}
	}
}
