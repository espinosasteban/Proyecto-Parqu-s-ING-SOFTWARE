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
	
	
	/// ESTE CASO ES CUANDO NO ESTÁN TODAS LAS FICHAS EN CÁRCEL \\\
	/// SIN EMBARGO, TAMBIÉN SE ESTÁ USANDO PARA ESE CASO (MOMENTÁNEAMENTE DEBIDO A QUE SE SOBREPONEN) \\\
	/// SE DEBE PONER EN EVENTO PASO, QUE SALGA NO LA ESCOGIDA, SINO TODAS PERO BIEN UBICADAS \\\
	// Salida de la cárcel (fichas verdes)
	if (oCarcel.carcelV and global.dobles) {
		if (global.posiv[instancia] == 0){
			global.posiv[instancia] = 1
			x = cas1.x
			y = cas1.y
			audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
			repite_turno_verde()
		}
	}

	// Movimiento normal de ficha en el tablero si se escogió un dado
	else if (global.lanzado and !global.dobles and global.posiv[instancia] != 0) {
		
		// Se comprueba si se escogió dado
		if (global.seleccionado != 0 and global.resultado != 0) {
			llega = global.posiv[instancia] + global.resultado - 1	
			for (i = global.posiv[instancia]; i <= llega; i++) {
				desplaza = oCasilla.casillas[i];
			    x = desplaza.x;
			    y = desplaza.y;
				audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
				fin = i
		
				// Verifica las condiciones de la siguiente casilla (Aún no hace nada)
				if (x == oCasilla.casillas[i+1].x and y == oCasilla.casillas[i+1].y) {
					break
					}
				}
	
				// Después de ciclo de movimiento, se actualiza posición final de la ficha
				global.posiv[instancia] = fin + 1

				// Se bloquea dado con el cual se realizó el movimiento
				if (global.seleccionado == dado1) {
					global.usado1 = true;
					global.resultado = 0
					oDado.random_number_1 = 0;
				}	
				else if (global.seleccionado == dado2) {
					global.usado2 = true;
					global.resultado = 0
					oDado2.random_number_2 = 0;
					
				if (global.usado1 and global.usado2) {
					fin_turno_verde()
				}
			}
		}
		
		// Si no se escogió un dado, arroja el siguiente mensaje
		else {
			if (global.usado1 and global.usado2) {
				fin_turno_verde()
			}
			else {
				show_message("Escoja el dado con el cuál se moverá la ficha")
			}
		}
	}
	if (global.usado1 and global.usado2) {
		fin_turno_verde()
	}
	// Movimiento con repetición de turno
	//else if 
}