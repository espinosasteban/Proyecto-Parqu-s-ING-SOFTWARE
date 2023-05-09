// En el evento "Left Pressed" de la ficha
if (mouse_check_button_pressed(mb_left)&& point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Acceder al resultado del dado
   resultado = oDado.resultado_dado
	 // Variables para almacenar la posición objetivo
	 
   
   pos_ficha = pos_ficha + resultado;  // Obtener la posición actual en x  // Obtener la posición actual en y
   movimiento = true;
}
