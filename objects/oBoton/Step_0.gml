if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
{
    // Cambia el sprite del botón al sprite de clic
    oDado.sprite_index = sDado; 
}