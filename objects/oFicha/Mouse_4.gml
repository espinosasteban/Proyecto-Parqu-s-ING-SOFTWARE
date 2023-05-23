/// @description Movimiento

// Detecta la instancia de la casilla a la cual es posible desplazarse
if (global.lanzado == true) {
	pos = resultado + pos_ficha - 1
	desplaza = oCasilla.casillas[pos]
	ex = desplaza.x
	ye = desplaza.y
	x = ex
	y = ye
	pos_ficha = pos + 1
	
	// Se habilita selección de casilla a mover
	global.movimiento = true;
	
	// Se deshabilita el estado del dado lanzado
	global.lanzado = false;
}