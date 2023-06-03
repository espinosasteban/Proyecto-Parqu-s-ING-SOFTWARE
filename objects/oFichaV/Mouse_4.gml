/// @description Movimiento
sonidos_mover = [sndMoverFicha1, sndMoverFicha2, sndMoverFicha3, sndMoverFicha4]
// Detecta la instancia de la casilla a la cual es posible desplazarse

if (global.lanzado == true) {
	llega = pos_ficha + global.resultado - 1
    for (i = 0; i <= llega; i++) {
        desplaza = oCasilla.casillas[i];
        x = desplaza.x;
        y = desplaza.y;
		audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
		pos_ficha = llega
		
		// Verifica las condiciones de la siguiente casilla
		if (x == oCasilla.casillas[i+1].x and y == oCasilla.casillas[i+1].y) {
			break
		}
    }
	
	
	// Se habilita selección de casilla a mover
	global.movimiento = true;
	
	// Se bloquea dado con el cual se realizó el movimiento
	if (global.seleccionado == dado1) {
		global.usado1 = true;
		oDado.random_number_1 = 0;
		
	} else if (global.seleccionado == dado2) {
		global.usado2 = true;
		oDado2.random_number_2 = 0;
	}
	
	// Se deshabilita el estado del dado lanzado
	global.lanzado = false;
}