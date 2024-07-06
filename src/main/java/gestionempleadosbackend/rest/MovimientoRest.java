package gestionempleadosbackend.rest;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import gestionempleadosbackend.model.Movimiento;
import gestionempleadosbackend.service.MovimientoService;

@RestController
@RequestMapping("/movimientos")
public class MovimientoRest {

	
	@Autowired
	private MovimientoService movimientoService;
	
	@GetMapping
    private ResponseEntity<List<Movimiento>> getAllMovimiento(){
	  return ResponseEntity.ok(movimientoService.findAll());
    }
	
	
	@PostMapping 
    private ResponseEntity<Movimiento> saveMovimiento(@RequestBody Movimiento movimiento){
    	try {
    		Movimiento movimientoGuardada = movimientoService.save(movimiento);
    	return ResponseEntity.created(new URI("/cuentas/"+ movimientoGuardada.getId())).body(movimientoGuardada);
    	}catch(Exception e) {
    		return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();	
    	}
    }
	
	
	
	@GetMapping("/byId")
    private ResponseEntity<Movimiento> getMovimientoById(@RequestHeader("id") Integer id) {
        try {
        	Movimiento movimiento = movimientoService.findMovimientoById(id);
            if (movimiento != null) {
                return ResponseEntity.ok(movimiento);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }
	
	
	
	

    
    @PutMapping("/byIdPut")
    public ResponseEntity<Movimiento> updateMovimiento(@RequestHeader("id") int id, @RequestBody Movimiento movimiento) {
        try {
            Movimiento movimientoActual = movimientoService.findMovimientoById(id);
            if (movimientoActual == null) {
                return ResponseEntity.notFound().build();
            }

            // Actualizar los campos de movimientoActual con los valores del movimiento recibida
            if (movimiento.getCuenta() != null) {
            	movimientoActual.setCuenta(movimiento.getCuenta());
            }
            if (movimiento.getFecha() != null) {
            	movimientoActual.setFecha(movimiento.getFecha());
            }
            if (movimiento.getValor() != null) {
            	movimientoActual.setValor(movimiento.getValor());
            }
            if (movimiento.getSaldo() != null) {
            	movimientoActual.setSaldo(movimiento.getSaldo());
            }
             
             
            // Guardar al movimiento actualizada en la base de datos
            Movimiento movimientoActualizada = movimientoService.save(movimientoActual);

            return ResponseEntity.ok(movimientoActualizada);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }
    
    
    
    
    @DeleteMapping("/byIdDelete")
    public  ResponseEntity<String> deleteMovimiento(@RequestHeader("id") int id) {
        try {
            Movimiento movimiento = movimientoService.findMovimientoById(id);
            if (movimiento == null) {
                return ResponseEntity.notFound().build();
            }
            movimientoService.delete(movimiento);
            return ResponseEntity.ok("movimiento eliminada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

	
	
}
