/// @description Movimiento
sonidos_mover = [sndMoverFicha1, sndMoverFicha2, sndMoverFicha3, sndMoverFicha4]

// Solo activa sus funciones si está en su turno
if (verificador.turno == "verde") {
	
	// Detecta la instancia seleccionada
	instancia = noone
	for (i = 0; i < array_length(fichas); i++) {
		if (id == fichas[i]) {
			instancia = i
			break
		} 
		else {
			continue
		}
	}

	// Salida de la cárcel (fichas verdes)
	if (oCarcel.carcelV and global.dobles) {
		if (posi[instancia] == 0){
			posi[instancia] = 1
			x = cas1.x
			y = cas1.y
			
			// Desactiva uso de fichas por haber sacado de la cárcel
			global.usado1 = true;
			global.usado2 = true;
			
			// Habilita lanzamiento de dados
			global.lanzado = false;
		}
	}

	// Movimiento normal en tablero
	else if (global.lanzado and posi[instancia] != 0) {
		llega = posi[instancia] + global.resultado - 1
		
	    for (i = 0; i <= llega; i++) {
	        desplaza = oCasilla.casillas[i];
	        x = desplaza.x;
	        y = desplaza.y;
			audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
			fin = i
		
			// Verifica las condiciones de la siguiente casilla
			if (x == oCasilla.casillas[i+1].x and y == oCasilla.casillas[i+1].y) {
				break
			}
	    }
		
		// Después de ciclo de movimiento, se actualiza posición final de la ficha
		posi[instancia] = posi[instancia] + fin

		// Se bloquea dado con el cual se realizó el movimiento
		if (global.seleccionado == dado1) {
			global.usado1 = true;
			oDado.random_number_1 = 0;
		
		} else if (global.seleccionado == dado2) {
			global.usado2 = true;
			oDado2.random_number_2 = 0;
		}
	}
	
	// Verifica si el turno del jugador ha terminado
	if (global.usado1 and global.usado2) {
		global.lanzado = false;
		verificador.turno = "amarillo"
	}
}