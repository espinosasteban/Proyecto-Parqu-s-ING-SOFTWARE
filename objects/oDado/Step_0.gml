var obj = reproducir // El objeto en el que deseas detectar el clic derecho
var x1 = obj.x; // Coordenada X del objeto
var y1 = obj.y; // Coordenada Y del objeto
var x2 = obj.x + sprite_get_width(obj.sprite_index); // Coordenada X del extremo derecho del sprite del objeto
var y2 = obj.y + sprite_get_height(obj.sprite_index); // Coordenada Y del extremo inferior del sprite del objeto

if (mouse_check_button(mb_left)&& mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2)
{
    sprite_index = sDado
}