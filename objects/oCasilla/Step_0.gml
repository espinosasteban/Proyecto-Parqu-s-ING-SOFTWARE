/// @description Sprites y selección

// Se crea una lista con todas las instancias y se asigna un sprite distinto a las casillas especiales
if (!global.ejecutado) { // Una sola ejecución
	sprite_index = sCasilla

	// Lista general de todas las casillas
	casillas = [cas1, cas2, cas3, cas4, cas5, cas6, cas7, cas8, cas9, cas10, cas11, cas12, cas13, cas14, cas15, cas16, cas17, cas18, cas19, cas20, cas21, cas22, cas23, cas24, cas25, cas26, cas27, cas28, cas29, cas30, cas31, cas32, cas33, cas34, cas35, cas36, cas37, cas38, cas39, cas40, cas41, cas42, cas43, cas44, cas45, cas46, cas47, cas48, cas49, cas50, cas51, cas52, cas53, cas54, cas55, cas56, cas57, cas58, cas59, cas60, cas61, cas62, cas63, cas64, cas65, cas66, cas67, cas68, cas69, cas70, cas71, cas72, cas73, cas74, cas75, cas76, cas77, cas78, cas79, cas80, cas81, cas82, cas83, cas84, cas85]
	
	// Lista de casillas salida
	salida = [cas1, cas18, cas35, cas52, cas69]
	var i;
	for (i = 0; i < array_length(salida); i++) {
	    var elemento = salida[i];
		elemento.sprite_index = sCasillaSalida
	}

	//Lista de casillas seguro
	seguro = [cas10, cas27, cas44, cas61, cas78]
	var i;
	for (i = 0; i < array_length(seguro); i++) {
	    var elemento = seguro[i];
		elemento.sprite_index = sCasillaSeguro
	}
	global.ejecutado = true;
}