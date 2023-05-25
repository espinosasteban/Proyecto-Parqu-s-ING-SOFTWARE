/// @description Movimiento
sonidos_mover = [sndMoverFicha1, sndMoverFicha2, sndMoverFicha3, sndMoverFicha4]
// Detecta la instancia de la casilla a la cual es posible desplazarse
if (global.lanzado == true) {
	
	
	pos = resultado + pos_ficha - 1
	
	i = 0
	while (i <= pos){
		var tiempoInicio = current_time;
		while (current_time - tiempoInicio < 1000)
		{
		    // Espera hasta que haya pasado 1 segundo (1000 milisegundos)
		    // No hagas nada en este bucle, solo espera
		}
		desplaza = oCasilla.casillas[i]
		ex = desplaza.x
		ye = desplaza.y
		x = ex
		y = ye
		pos_ficha = i + 1
		
		audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
		i += 1
		show_message("i es: " + string(i))
		
		  // Guarda el tiempo actual en una variable

		
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