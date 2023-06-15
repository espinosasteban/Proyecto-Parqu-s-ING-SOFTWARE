/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

collisionV = collision_rectangle(895, 706, 895 + sprite_width, 706 + sprite_height, oFichaV, false, true);
if (collisionV != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelV = true;
	}
	else {
		carcelV = false;
}

// Verifica si hay fichas en la cárcel amarilla
collisionAm = collision_rectangle(1023, 328, 1023 + sprite_width, 328 + sprite_height, oFichaAm, false, true);
if (collisionAm != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAm = true;
	}
	else {
		carcelAm = false;
}

// Verifica si hay fichas en la cárcel morada
collisionM = collision_rectangle(713, 48, 713 + sprite_width, 48 + sprite_height, oFichaM, false, true);
if (collisionM != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelM = true;
	}
	else {
		carcelM = false;
}

// Verifica si hay fichas en la cárcel azul
collisionAz = collision_rectangle(383, 328, 383 + sprite_width, 328 + sprite_height, oFichaAz, false, true);
if (collisionAz != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAz = true;
	}
	else {
		carcelAz = false;
}

// Verifica si hay fichas en la cárcel morada
collisionR = collision_rectangle(511, 680, 511 + sprite_width, 680 + sprite_height, oFichaR, false, true);
if (collisionR != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelR = true;
	}
	else {
		carcelR = false;
}