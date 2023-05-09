/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width,y + sprite_height))
{
    // Cambia el sprite del botón al sprite de clic
    oDado.sprite_index = sDado;
	oDado2.sprite_index = sDado;
}

// En el evento "Step" del botón
if oDado.sprite_index == sDado {
    if tiempo_sprite > 0 { // Si aún queda tiempo en el temporizador
        tiempo_sprite -= 1;
    } else { // Si se agotó el tiempo, volver al sprite original
		if (oDado.random_number_1 == 1) {
			oDado.sprite_index = sDado_quieto;
		} else if (oDado.random_number_1 == 2) {
			oDado.sprite_index = s2;
		} else if (oDado.random_number_1 == 3) {
			oDado.sprite_index = s3;
		} else if (oDado.random_number_1 == 4) {
			oDado.sprite_index = s4;
		} else if (oDado.random_number_1 == 5) {
			oDado.sprite_index = s5;
		} else if (oDado.random_number_1 == 6) {
			oDado.sprite_index = s6;
        } if (oDado2.random_number_2 == 1) {
			oDado2.sprite_index = sDado_quieto;
		} else if (oDado2.random_number_2 == 2) {
			oDado2.sprite_index = s2;
		} else if (oDado2.random_number_2 == 3) {
			oDado2.sprite_index = s3;
		} else if (oDado2.random_number_2 == 4) {
			oDado2.sprite_index = s4;
		} else if (oDado2.random_number_2 == 5) {
			oDado2.sprite_index = s5;
		} else if (oDado2.random_number_2 == 6) {
			oDado2.sprite_index = s6;
	}
}}