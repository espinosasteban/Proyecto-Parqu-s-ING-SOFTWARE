/// @description Lanzar dados
// Puede escribir su código en este editor

// Solo funciona si el dado no ha sido lanzado y usado o si se acaba un turno
if (global.lanzado == false) {
	randomize();
	//Habilita la selección de dados
	global.usado1 = false;
	global.usado2 = false;
	
	// Establece resultado y selección en 0, hasta que se escoja un dado
	global.resultado = 0;
	global.seleccionado = 0
	
    // Ejecuta animación de dados en movimiento e inicializa contador
    oDado.sprite_index = sDado;
	oDado2.sprite_index = sDado;
	sonidos_dados = [sndTirarDados1, sndTirarDados2]
	audio_play_sound(sonidos_dados[irandom_range(0,1)], 1, false)
	tiempo_sprite = 1.5 * room_speed;
	
	// Asigna resultados aleatorios
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