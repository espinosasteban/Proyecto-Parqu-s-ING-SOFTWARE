// En el objeto del dado
// (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
if (global.usado1 == false) {
    
    // Retorna el valor del dado seleccionado
    show_message("El resultado del dado es: " + string(random_number_1));
	
	// Asigna resultado a objeto ficha
	oFicha.resultado = random_number_1;
	
	// Detecta cuál dado fue seleccionado
	var inst = instance_position(mouse_x, mouse_y, oDado);
	global.seleccionado = inst.id;
	
	// Permitir al jugador ejecutar un movimiento
	global.lanzado = true; 
}

