/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_index = 2;

// En el evento "Mouse Izquierdo Pulsado" del botón
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    oDado.sprite_index = sDado; // Cambiar sprite del botón
    tiempo_sprite = 1.5 * room_speed; // Establecer temporizador de 2 segundos
}