
package integrador.Entidades;

import java.awt.Image;
import java.io.InputStream;

//import com.sun.mail.handlers.image_gif;

/**
 *
 * Author Alex Cordova Huaracha 
 */
public class Productos {
    //ATRIBUTOS
    private int id;
    private InputStream imagen;
    private String nombre,marca;
    private double precio;
    private int id_estado;
    private String especificacion;
    
    
	//METODOS
    
   

	public double getPrecio() {
        return precio;
    }
    
    public Productos(int id, String nombre, String marca, double precio, String especificacion) {
		
		this.id = id;
		this.nombre = nombre;
		this.marca = marca;
		this.precio = precio;
		this.especificacion = especificacion;
	}

	public Productos() {
		// TODO Auto-generated constructor stub
	}

	public InputStream getImagen() {
		return imagen;
	}

	public void setImagen(InputStream imagen) {
		this.imagen = imagen;
	}

	public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

   

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public String getEspecificacion() {
        return especificacion;
    }

    public void setEspecificacion(String especificacion) {
        this.especificacion = especificacion;
    }
    
    
}
