// En el objeto del dado
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {

    
    // Aquí puedes escribir el código para utilizar el resultado del dado según tus necesidades
    show_message("El resultado del dado es: " + string(random_number_1));
	global.resultado_dado = random_number_1
}