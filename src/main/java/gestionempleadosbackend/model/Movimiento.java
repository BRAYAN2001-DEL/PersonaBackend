package gestionempleadosbackend.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name = "movimiento")
public class Movimiento {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne 
	@JoinColumn (name = "id_cuenta")
	private Cuenta cuenta;
	@Column (name = "fecha")
	private Date fecha; 
	@Column (name = "valor")
	private Double valor;
	@Column (name = "saldo")
	private Double saldo;
	
	public Movimiento() {
	}

	public Movimiento(int id, Cuenta cuenta, Date fecha, Double valor, Double saldo) {
		super();
		this.id = id;
		this.cuenta = cuenta;
		this.fecha = fecha;
		this.valor = valor;
		this.saldo = saldo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cuenta getCuenta() {
		return cuenta;
	}

	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Double getSaldo() {
		return saldo;
	}

	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}
	
	
	
	
	
}
