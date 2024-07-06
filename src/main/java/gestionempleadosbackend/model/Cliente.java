package gestionempleadosbackend.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name = "cliente")
public class Cliente{

	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@ManyToOne 
	@JoinColumn (name = "persona_id")
	private Persona persona;
	
	@Column (name = "contrasena")
	private String contrasena;
	
	@Column (name = "estado")
	private Boolean estado;
	
	public Cliente() {
	}

	public Cliente(int id, Persona persona, String contrasena, Boolean estado) {
		super();
		this.id = id;
		this.persona = persona;
		this.contrasena = contrasena;
		this.estado = estado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public Boolean getEstado() {
		return estado;
	}

	public void setEstado(Boolean estado) {
		this.estado = estado;
	}
 
	
	
}
