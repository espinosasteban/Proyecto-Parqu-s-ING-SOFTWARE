/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Verifica si hay fichas en la cárcel verde
collisionV= collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaV, false, true);
if (collisionV != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelV = true;
	}
	else {
		carcelV = false;
}

// Verifica si hay fichas en la cárcel amarilla
collisionAm = collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaAm, false, true);
if (collisionAm != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAm = true;
	}
	else {
		carcelAm = true;
}

// Verifica si hay fichas en la cárcel morada
collisionM = collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaM, false, true);
if (collisionM != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelM = true;
	}
	else {
		carcelM = true;
}

// Verifica si hay fichas en la cárcel azul
collisionAz = collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaAz, false, true);
if (collisionAz != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelAz = true;
	}
	else {
		carcelAz = true;
}

// Verifica si hay fichas en la cárcel morada
collisionR = collision_rectangle(x, y, x + sprite_width, y + sprite_height, oFichaR, false, true);
if (collisionR != noone) {
	// La instancia de obj_1 está dentro del área del sprite de una instancia de obj_2
	// Aquí puedes realizar las acciones que desees
	carcelR = true;
	}
	else {
		carcelR = true;
}