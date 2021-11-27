package integrador.Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.jboss.logging.Logger;

import integrador.Entidades.Persona;
//import jdk.internal.vm.compiler.collections.UnmodifiableMapCursor;
import integrador.Utilitario.NewConexion;

public class Login  {
	
	public int login(Persona per) {
		
		NewConexion cn = new NewConexion();
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
				
		String sql = "select  idcliente,nombrecliente,apellidocliente, edadcliente,correocliente,"
				+ "passwordcliente,maternocliente from persona where correo = ? and password=?";
        int r=0;
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			ps.setString(5, per.getCorreo() );
			ps.setString(6, per.getPassword() );
			
			
			while(rs.next()) {
				 r=r+1;
				
				per.setCorreo(rs.getString("correo"));
				per.setPassword(rs.getString("password"));
			}
			if(r==1) {
				return 1;
			}else {
				return 0;
			}
			
			
		} catch (SQLException ex) {
			Logger.getLogger(Login.class.getName());
			return 0;
		}
		
	}
}
