/// @description Movimiento

// Detecta la instancia de la casilla a la cual es posible desplazarse
if (global.lanzado == true) {
	desplaza = oCasilla.casillas[resultado + pos_ficha - 1]
	desplaza.sprite_index = sCasillaElegible
	
	// Se habilita selección de casilla a mover
	global.movimiento = true;
	
	// Se deshabilita el estado del dado lanzado
	global.lanzado = false;
}