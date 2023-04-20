/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Fila 1
instance_create_layer(x, y, "Instances", oCasilla);
instance_create_layer(x+63, y, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y, "Instances", oCasilla);

// Fila 2
instance_create_layer(x, y+30, "Instances", oCasilla);
instance_create_layer(x+63, y+30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+30, "Instances", oCasilla);

// Fila 3
instance_create_layer(x, y+2*30, "Instances", oCasilla);
instance_create_layer(x+63, y+2*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+2*30, "Instances", oCasilla);

// Fila 4
instance_create_layer(x, y+3*30, "Instances", oCasilla);
instance_create_layer(x+63, y+3*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+3*30, "Instances", oCasilla);

// Fila 5
instance_create_layer(x, y+4*30, "Instances", oCasillaSeguro);
instance_create_layer(x+63, y+4*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+4*30, "Instances", oCasillaSalida);

// Fila 6
instance_create_layer(x, y+5*30, "Instances", oCasilla);
instance_create_layer(x+63, y+5*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+5*30, "Instances", oCasilla);

// Fila 7
instance_create_layer(x, y+6*30, "Instances", oCasilla);
instance_create_layer(x+63, y+6*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+6*30, "Instances", oCasilla);

// Fila 8
instance_create_layer(x, y+7*30, "Instances", oCasilla);
instance_create_layer(x+63, y+7*30, "Instances", oCasilla); // Debe ser de cierto color
instance_create_layer(x+2*63, y+7*30, "Instances", oCasilla);

// Fila cielo
instance_create_layer(x+31, y-80, "Instances", oCasillaCielo);