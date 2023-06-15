/// @description Permisos y funciones

// En este campo se crean las variables que van a permitir o restringir acciones

// Variable que verifica si la ficha ya puede realizar un movimiento
global.movimiento = false;
global.posaz = [0,0,0,0]
fichas = [faz1, faz2, faz3, faz4]
liberado = false;

// Función que detecta si todas las posiciones de una lista son 0
function todo_cero(lista){
	allZeros = true;  // Variable de control para almacenar si todos los elementos son cero

	for (i = 0; i < array_length(lista); i++) {
	    if (lista[i] != 0) {
	        allZeros = false;  // Si se encuentra un valor distinto de cero, establece la variable de control en falso
	        break;  // Termina el bucle porque ya no es necesario seguir revisando la lista
	    }
	}

	if (allZeros) {
	    // Todos los elementos son cero
	    return true;
	} else {
	    // Al menos un elemento no es cero
	    return false;
	}
}

// Función que termina el turno (jugador azul)
function fin_turno_azul(){
	if (global.usado1 and global.usado2 and !global.dobles){
	global.lanzado = false;
	verificador.turno = "rojo"
	}
	else if (global.usado1 and global.usado2 and global.dobles){
		repite_turno_azul()
	}
	else {
		return noone}
}
	
	
function repite_turno_azul(){
	global.lanzado = false;
	global.dobles = false;
}