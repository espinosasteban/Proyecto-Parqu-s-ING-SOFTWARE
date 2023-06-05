/// @description Lanzar dados
// Puede escribir su código en este editor

// Solo funciona si el dado no ha sido lanzado o si se acaba un turno
if (!global.lanzado) {
	image_index = 2;
	sonidos_dados = [sndTirarDados1, sndTirarDados2]
	randomize();
	audio_play_sound(sonidos_dados[irandom_range(0,1)], 1, false)
	oDado.sprite_index = sDado;
	oDado2.sprite_index = sDado;// Cambiar sprite del botón
	tiempo_sprite = 1.5 * room_speed;
	oDado.random_number_1 = irandom_range(1, 6);
	oDado2.random_number_2 = irandom_range(1, 6);
	
	// Establecer dado como lanzado
	global.lanzado = true;
	
	// Verificar si el resultado es doble
	if (oDado.random_number_1 == oDado2.random_number_2) {
		show_message("dobles")
		global.dobles = true;
	}
	else {
		global.dobles = false;
	}
}