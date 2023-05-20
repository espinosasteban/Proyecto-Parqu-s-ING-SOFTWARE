// En el objeto del dado
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {

    
    // Aquí puedes escribir el código para utilizar el resultado del dado según tus necesidades
    show_message("El resultado del dado es: " + string(random_number_1));
	oFicha.resultado = random_number_1
	
	// se cambia lanzamiento del dado a true, para permitir al jugador ejecutar un movimiento
	global.lanzado = true; 
}