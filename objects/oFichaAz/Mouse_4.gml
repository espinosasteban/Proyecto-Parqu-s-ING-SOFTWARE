/// @description Movimiento
sonidos_mover = [sndMoverFicha1, sndMoverFicha2, sndMoverFicha3, sndMoverFicha4]

// Solo activa sus funciones si está en su turno
if (verificador.turno == "azul") {
	
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
	
	
	// Libera ficha comida (a elección)
	if (oCarcel.carcelAz and global.dobles and liberado) {
		if (global.posaz[instancia] == 0){
			global.posaz[instancia] = 1
			
			if (instancia == 0) {
			x = cas1.x - 20
			y = cas1.y				
			}
			else if (instancia == 1) {
			x = cas1.x-10
			y = cas1.y
			}
			x = cas1.x
			y = cas1.y
			audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
			repite_turno_azul()
		}
	}

	// Movimiento normal de ficha en el tablero si se escogió un dado
	else if (global.lanzado and !oCarcel.carcelAz) {
		
		// Se comprueba si se escogió dado
		if (global.seleccionado != 0 and global.resultado != 0) {
			llega = global.posaz[instancia] + global.resultado - 1	
			for (i = global.posaz[instancia]; i <= llega; i++) {
				indice = i % array_length(oCasilla.casillas)
				desplaza = oCasilla.casillas[indice];
				
				// Asigna posición según el ángulo
				
				// SECCION azul
				if (desplaza.image_angle == 0) {
					if (instancia == 0) {
						x = desplaza.x - 25;
						y = desplaza.y;
					}
					else if (instancia == 1) {
						x = desplaza.x - 7;
						y = desplaza.y;
					}
					else if (instancia == 2) {
						x = desplaza.x + 8;
						y = desplaza.y;
					}
					else if (instancia == 3) {
						x = desplaza.x + 25;
						y = desplaza.y;
					}
				}
				
				// SECCION AMARILLA
				else if (desplaza.image_angle == 72) {
					if (instancia == 0) {
						x = desplaza.x - 8;
						y = desplaza.y + 15;
					}
					else if (instancia == 1) {
						x = desplaza.x - 3;
						y = desplaza.y + 2;
					}
					else if (instancia == 2) {
						x = desplaza.x + 2;
						y = desplaza.y - 12;
					}
					else if (instancia == 3) {
						x = desplaza.x + 8;
						y = desplaza.y - 26;
					}
				}
				
				// SECCION MORADA
				else if (desplaza.image_angle == 144) {
					if (instancia == 0) {
						x = desplaza.x - 19;
						y = desplaza.y - 7;
					}
					else if (instancia == 1) {
						x = desplaza.x - 7;
						y = desplaza.y - 3;
					}
					else if (instancia == 2) {
						x = desplaza.x + 4;
						y = desplaza.y + 8;
					}
					else if (instancia == 3) {
						x = desplaza.x + 15;
						y = desplaza.y + 16;
					}
				}
					
				// SECCION AZUL
				else if (desplaza.image_angle == 216){
					if (instancia == 0) {
						x = desplaza.x - 18;
						y = desplaza.y + 15;
					}
					else if (instancia == 1) {
						x = desplaza.x - 6;
						y = desplaza.y + 7;
					}
					else if (instancia == 2) {
						x = desplaza.x + 6;
						y = desplaza.y - 2;
					}
					else if (instancia == 3) {
						x = desplaza.x + 17;
						y = desplaza.y - 10;
					}
				}
					
				// SECCION ROJA
				else if (desplaza.image_angle == 288){
					if (instancia == 0) {
						x = desplaza.x - 6;
						y = desplaza.y - 28;
					}
					else if (instancia == 1) {
						x = desplaza.x - 2;
						y = desplaza.y - 16;
					}
					else if (instancia == 2) {
						x = desplaza.x + 3;
						y = desplaza.y + 1;
					}
					else if (instancia == 3) {
						x = desplaza.x + 7;
						y = desplaza.y + 13;
					}
				}
				
				audio_play_sound(sonidos_mover[irandom_range(0,3)], 0, false)
				fin = indice
				}
	
				// Después de ciclo de movimiento, se actualiza posición final de la ficha
				global.posaz[instancia] = fin + 1

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
				}
				fin_turno_azul()
			}
		}
		// Si no se escogió un dado, arroja el siguiente mensaje
		else {
			show_message("Escoja el dado con el cuál se moverá la ficha")
			fin_turno_azul()
		}
		fin_turno_azul()
	}