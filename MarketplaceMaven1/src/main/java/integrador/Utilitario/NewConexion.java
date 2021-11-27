package integrador.Utilitario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class NewConexion {

	Connection con;
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplace",
					"root","");
			if (con != null) {
				System.out.println("Conectado");
			}
		} catch (Exception e) {
			System.out.println("No se pudo conectar a la base de datos");
			e.printStackTrace();
		}return con;
	}
	
	
	

}
