
package integrador.Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import integrador.Entidades.Persona;
import integrador.Utilitario.NewConexion;


public class DaoPersona  {
	
	NewConexion cn = new NewConexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	
	public List<Persona> listar(){
		List<Persona> lista = new ArrayList<>();
		String sql = "select  * from persona";

		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Persona u = new Persona();
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApellido_paterno(rs.getString(3));
				u.setApellido_materno(rs.getString(4));
				
				u.setCorreo(rs.getString(6));
				u.setPassword(rs.getString(7));
				u.setDireccion(rs.getString(8));
				u.setTelefono(rs.getInt(9));				
				u.setDni(rs.getInt(10));
				u.setRol(rs.getInt(11));
				u.setDistrito(rs.getInt(12));
				
				lista.add(u);
			}
			
		} catch (SQLException e) {}
			
		return lista;
	}
	public void agregar(Persona p) {
		String sql = "INSERT INTO persona( nombre, apellido_paterno, apellido_materno, "
				+ "correo, password, direccion, telefono, dni,id_rol,id_distrito) VALUES (?,?,?, ?, ?, ?, ?, ?, ?,?)";
		
		try {
			con=cn.getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1,p.getNombre());
			ps.setString(2,p.getApellido_paterno());
			ps.setString(3,p.getApellido_materno());
			ps.setString(4,p.getCorreo());
			ps.setString(5,p.getPassword());
			ps.setString(6,p.getDireccion());
			ps.setInt(7,p.getTelefono());
			ps.setInt(8,p.getDni());
			ps.setInt(9,p.getRol());
			ps.setInt(10,p.getDistrito());
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	public void insertarPersona(String nombre, String apellido_paterno, String apellido_materno, String correo, String password,
			String direccion, int telefono, int dni, int rol, int distrito)
			 {
		String sql = "INSERT INTO persona( nombre, apellido_paterno, apellido_materno,  correo, password, diceccion, telefono, dni,id_rol,id_distrito) VALUES (?,?,?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			//	
			// ps.setInt(1, id);
			ps.setString(1, nombre);
			ps.setString(2, apellido_paterno);
			ps.setString(3, apellido_materno);
			ps.setInt(4, dni);
			ps.setInt(5, rol);
			ps.setInt(6, distrito);
			ps.setInt(7, telefono);
			ps.setString(8, direccion);
			ps.setString(9, correo);
			ps.setString(10, password);
			ps.execute();
			con.commit();
            con.close();
		} catch (SQLException e) {			
		}
	}
}
