/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

collisionV = collision_rectangle(883, 661, 883 + sprite_width, 661 + sprite_height, oFichaV, false, true);
if (collisionV != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelV = true;
	}
	else {
		carcelV = false;
}

collisionAm = collision_rectangle(1001, 332, 1001 + sprite_width, 332 + sprite_height, oFichaAm, false, true);
if (collisionAm != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAm = true;
	}
	else {
		carcelAm = false;
}

collisionM = collision_rectangle(702, 107, 712 + sprite_width, 107 + sprite_height, oFichaM, false, true);
if (collisionM != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelM = true;
	}
	else {
		carcelM = false;
}

collisionAz = collision_rectangle(415, 332, 415 + sprite_width, 332 + sprite_height, oFichaAz, false, true);
if (collisionAz != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAz = true;
	}
	else {
		carcelAz = false;
}

collisionR = collision_rectangle(546, 658, 546 + sprite_width, 658 + sprite_height, oFichaR, false, true);
if (collisionR != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelR = true;
	}
	else {
		carcelR = false;
}
