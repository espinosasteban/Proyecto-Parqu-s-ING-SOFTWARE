/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width,y + sprite_height))
{
    // Cambia el sprite del botón al sprite de clic
    oDado.sprite_index = sDado;
}

// En el evento "Step" del botón
if oDado.sprite_index == sDado {
    if tiempo_sprite > 0 { // Si aún queda tiempo en el temporizador
        tiempo_sprite -= 1;
    } else { // Si se agotó el tiempo, volver al sprite original
        oDado.sprite_index = sDado_quieto;
        tiempo_sprite = 0;
    }
}