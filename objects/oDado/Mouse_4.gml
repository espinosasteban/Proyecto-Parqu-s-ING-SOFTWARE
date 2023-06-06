if (!global.usado1 and global.lanzado) {
    // Retorna el valor del dado seleccionado
    show_message("El resultado del dado es: " + string(random_number_1));
	
	// Asigna resultado a objeto ficha
	global.resultado = random_number_1;
	
	// Detecta cuál dado fue seleccionado
	global.seleccionado = id
}

