/// @description Permisos y funciones

// En este campo se crean las variables que van a permitir o restringir acciones

// Variable que verifica si la ficha ya puede realizar un movimiento
global.movimiento = false;
global.posim = [0,0,0,0]
fichas = [fm1, fm2, fm3, fm4]

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

// Función que termina el turno (jugador morado)
function fin_turno_morado(){
	global.usado1 = true;
	global.usado2 = true;
	global.dobles = false;
	global.lanzado = false;
	verificador.turno = "azul"
	}
	
function repite_turno_morado(){
	global.usado1 = true;
	global.usado2 = true;
	global.lanzado = false;
	global.dobles = false;
}