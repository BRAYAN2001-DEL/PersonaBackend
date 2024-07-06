package gestionempleadosbackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "persona")
public class Persona {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column (name = "nombre")
	private String nombre;
	@Column (name = "apellido")
	private String apellido;
	@Column (name = "edad")
	private int edad;
	@ManyToOne
	@JoinColumn (name = "id_pais")
	private Pais pais;
	@ManyToOne 
	@JoinColumn (name = "id_estado")
	private Estado estado;
	@Column (name = "genero")
	private String genero;
	@Column (name = "identificacion")
	private String identificacion;
	@Column (name = "direccion")
	private String  direccion;
	@Column (name = "telefono")
	private String telefono;
	
	public Persona() {
	}
	
	
	
	 


	public Persona(int id, String nombre, String apellido, int edad, Pais pais, Estado estado, String genero,
			String identificacion, String direccion, String telefono) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.edad = edad;
		this.pais = pais;
		this.estado = estado;
		this.genero = genero;
		this.identificacion = identificacion;
		this.direccion = direccion;
		this.telefono = telefono;
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
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public Pais getPais() {
		return pais;
	}
	public void setPais(Pais pais) {
		this.pais = pais;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}



	public String getGenero() {
		return genero;
	}



	public void setGenero(String genero) {
		this.genero = genero;
	}






	public String getIdentificacion() {
		return identificacion;
	}






	public void setIdentificacion(String identificacion) {
		this.identificacion = identificacion;
	}






	public String getDireccion() {
		return direccion;
	}






	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}






	public String getTelefono() {
		return telefono;
	}






	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	
	
	
}
