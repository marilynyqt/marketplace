
package integrador.Entidades;

/**
 *
 * Author Alex Cordova Huaracha 
 */
public class Carrito {
	
    private String nombres,descripcion;
    private int item,idProducto,cantidad;
    private double precioCompra,subTotal;
    
    //metodos
    public Carrito() {
		// TODO Auto-generated constructor stub
	}

	public Carrito(String nombres, String descripcion, int item, int idProducto, int cantidad, double precioCompra,
			double subTotal) {
		super();
		this.nombres = nombres;
		this.descripcion = descripcion;
		this.item = item;
		this.idProducto = idProducto;
		this.cantidad = cantidad;
		this.precioCompra = precioCompra;
		this.subTotal = subTotal;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getItem() {
		return item;
	}

	public void setItem(int item) {
		this.item = item;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecioCompra() {
		return precioCompra;
	}

	public void setPrecioCompra(double precioCompra) {
		this.precioCompra = precioCompra;
	}

	public double getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
    

    
}
