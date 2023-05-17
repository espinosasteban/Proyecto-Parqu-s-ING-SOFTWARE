function getFilteredInstancePosition(objeto, variable, valor)
{
    target = noone; // Variable para almacenar la instancia encontrada

    // Bucle para buscar la instancia por el valor de la variable
    with (objeto) {
        if (variable == valor) {
            target = id; // Almacenar el id de la instancia encontrada
            break; // Salir del bucle una vez que se encuentra la instancia
        }
    }

    if (instance_exists(target)) {
        // Devolver la posición de la instancia encontrada
        return [target.x, target.y];
    } else {
        // Si no se encuentra la instancia, devolver una posición inválida (por ejemplo, [-1, -1])
        return [-1, -1];
    }
}

if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Obtener la posición de la ficha seleccionada
	desplazamiento = pos_ficha + movimiento;
    for (i = 1; i <= desplazamiento; i++){
		casilla_posicion = getFilteredInstancePosition(oCasilla, oCasilla.id_casilla, i)
		ficha_posicion = getFilteredInstancePosition(oFicha, id_ficha, 1)
		
		// Posiciones de casilla
		xcas = casilla_posicion[0];
		ycas = casilla_posicion[1];
		
		// Posiciones de ficha
		xficha = ficha_posicion[0];
		yficha = ficha_posicion[1];
		
		xficha = xcas
		yficha = ycas
		
		casillax = cas2.x
		casillay = cas2.y
	
		posequis = fv1.x
		posye = fv1.y
		
		fv1.x = casillax
		fv1.y = casillay
		
		var tiempo_pausa = 0.2; // Duración de la pausa en segundos
		var tiempo_inicial = current_time;

		while (current_time - tiempo_inicial < tiempo_pausa * 1000) {
		// Vaciar el bucle para pausar el flujo del código
		}
	}
	
	//show_message(desplazamiento)
	//show_message(posequis)
	//show_message(posye)
	//show_message(casillax)
	//show_message(casillay)
}