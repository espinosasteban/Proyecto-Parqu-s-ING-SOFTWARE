// En el objeto del dado
if (!global.usado2 and global.lanzado) {
    // Retorna el valor del dado seleccionado
    show_message("El resultado del dado es: " + string(random_number_2));
	
	// Asigna resultado a objeto ficha
	global.resultado = random_number_2;
	
	// Detecta el dado seleccionado
	global.seleccionado = id
}