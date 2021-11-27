
package integrador.Modelo;

import integrador.Entidades.Tienda;
import integrador.Utilitario.NewConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * Author Alex Cordova Huaracha 
 */
public class DaoTienda{
	
	NewConexion cn = new NewConexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
    public List<Tienda> consultarTiedas() {
        List<Tienda> lst = new ArrayList<>();
        String sql = "select  id,razon-social,direccion, ruc,tatitud,longitud from tienda";
        
        
        
        ResultSet rs;
        try {
        	con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
            while (rs.next()) {
            	Tienda u = new Tienda();
                u.setRazon(rs.getString(1));
                u.setDireccion(rs.getString(2));
                u.setRuc(rs.getInt(3));
                u.setTatitud(rs.getDouble(4));
                u.setLongitud(rs.getDouble(5));
                
                lst.add(u);
            }
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lst;
    }
    //insert into category(category_name,category_image) values('tablette', lo_import('D:\image.jpg'));
    public void insertarTienda( String razon,String direccion,int ruc, double tatitud, double longitud) {
        String sql = "INSERT INTO tienda( razon_social,direccion, ruc,tatitud,longitud) VALUES (?, ?, ?, ?, ?)";
        
        try {
        	con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
            //stm.setInt(1, id);
			ps.setString(1, razon);
			ps.setString(2, direccion);
			ps.setInt(3, ruc);            
			ps.setDouble(4, tatitud);
			ps.setDouble(5, longitud);
            
			ps.execute();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
