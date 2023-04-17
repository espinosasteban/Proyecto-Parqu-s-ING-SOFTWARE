/// @description se muestra el dado
// Puede escribir su código en este editor

// Generar un número aleatorio entre 1 y 6
// Repetir la animación 10 veces
for (var i = 0; i < 10; i++)
{
    // Generar un número aleatorio entre 1 y 6
    numero = irandom_range(1, 6);

    // Obtener la subimagen correspondiente a ese número
    var subimagen = sprite_get_subimage_index(sDado, numero - 1);

    // Dibujar la subimagen en la posición (x, y)
    draw_sprite(sDado, subimagen, 96, 64);
    
    // Pausar por un breve período de tiempo para que el ojo humano pueda ver la animación
    sleep(100);
}


