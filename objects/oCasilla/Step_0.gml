/// @description Sprite casillas

sprite_index = sCasilla

// Lista de casillas salida
salida = [cas1, cas18, cas35, cas52, cas69]
var i;
for (i = 0; i < array_length_1d(salida); i++) {
    var elemento = salida[i];
	elemento.sprite_index = sCasillaSalida
}

//Lista de casillas seguro
seguro = [cas10, cas27, cas44, cas61, cas78]
var i;
for (i = 0; i < array_length_1d(seguro); i++) {
    var elemento = seguro[i];
	elemento.sprite_index = sCasillaSeguro
}