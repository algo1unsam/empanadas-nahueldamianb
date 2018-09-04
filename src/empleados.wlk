object gimenez {

	var property sueldo = 15000
	var sueldoCobrado = 0

	method totalCobrado() {
		return sueldoCobrado
	}

	method cobrarSueldo() {
		sueldoCobrado += sueldo
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var property deuda = 0
	var property dinero = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method totalCobrado() {
		dinero += self.sueldo()
		return dinero
	}

	method gastar(unDinero) {
		if (dinero < unDinero) {
			deuda += unDinero - dinero
			dinero = 0
		} else {
			dinero -= unDinero
		}
	}

	method totalDinero() {
		if (dinero > 0) {
			return dinero
		} else return 0
	}

	method totalDeuda() {
		return deuda
	}

	method pagarDeuda() {
		if (self.totalDeuda() > dinero) {
			deuda -= dinero
			dinero = 0
		} else {
			dinero -= deuda
			deuda = 0
		}
	}

}

object galvan {

	var property dinero = 300000

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	}

}


	//method pagarA( empleado ) { dinero -= empleado.sueldo() }

    //1. Cuando Galvan le paga a cualquier empleado, el programa se rompe porque los emplados no conocen
    // el metodo cobrarSueldo.
    //2. Para solucionar esto habría que crear este metodo cobrarSueldo() en los emplados, para que el programa lo entienda
