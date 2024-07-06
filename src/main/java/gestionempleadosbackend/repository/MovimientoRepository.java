package gestionempleadosbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import gestionempleadosbackend.model.Movimiento;

public interface MovimientoRepository extends JpaRepository<Movimiento, Integer>{
	

	@Query("SELECT p FROM Movimiento p WHERE p.id = :id")
	Movimiento findMovimientoById(@Param("id") Integer id);
}
