object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var sueldoTotal = 1500
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method totalCobrado() {
		sueldoTotal += self.sueldo()
		return sueldoTotal
	}
	method cobrarSueldo(){
	      self.totalCobrado()
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo = 0
	var deuda = 0
	var dinero = 0
	
	
	method gastar (cantidad){
		if (cantidad > dinero) {
			deuda += cantidad
		}
		dinero -= cantidad
		if (cantidad > dinero) {
			deuda += cantidad
		}
	}
	
	method totalDeuda()
		{
		
		}
	
	method totalDinero()
		{
		
		}
		
	method venderEmpanada() {
		cantidadEmpanadasVendidas +=1
	   }
	   
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		sueldo += self.sueldo()
		sueldo -= deuda
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	//method pagarA( empleado ) { dinero -= empleado.sueldo() }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
    
    //1. Cuando Galvan le paga a cualquier empleado, el programa se rompe porque los emplados no conocen
    // el metodo cobrarSueldo.
    //2. Para solucionar esto habría que crear este metodo cobrarSueldo() en los emplados, para que el programa lo entienda
}
}
