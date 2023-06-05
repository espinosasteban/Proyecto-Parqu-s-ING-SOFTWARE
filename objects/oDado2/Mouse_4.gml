// En el objeto del dado
if (!global.usado2 and global.lanzado) {
	// Activa la selección de dados
	global.usado2 = true;
	
    // Retorna el valor del dado seleccionado
    show_message("El resultado del dado es: " + string(random_number_2));
	
	// Asigna resultado a objeto ficha
	global.resultado = random_number_2;
	
	// Detecta cuál dado fue seleccionado
	var inst = instance_position(mouse_x, mouse_y, oDado2);
	global.seleccionado = inst.id;
}