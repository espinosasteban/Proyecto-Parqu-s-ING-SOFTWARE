/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Verifica si hay fichas en la cárcel verde
collision_v = collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaV, false, true);

if (collision_v != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelV = true;
	}
else {
	carcelV = false;
}