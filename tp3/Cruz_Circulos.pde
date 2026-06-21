void cruz (int fila, int columna){ //Parametros PosFila y Pos Columna (Sirve para saber la cantidad de filas y columnas a recorrer y/o comparar);
  
  //Zona De Columnas y Filas apartir del Centro
  
  // Fila Medio Zona Izquierda
    strokeWeight(0);//No darle peso a los bordes de las figuras;
    
    for (int j = 0; j < fila; j++){ //Comparo en que posicion de celda me encuentro;
      if (esNegro(0,j)){  //Distingo si esa Celda es par o impar;
      fill (0); //Si Es Par coloreo de negro
    }else{
      fill (255); //Si es Impar coloreo de blanco
    }
    //Crear los circulos en Celdas
    ellipse (j*tam+430,195,circulo,circulo); //Ubico el primer circulo dentro de la celda;
    ellipse (j*tam+430,215,circulo,circulo); //Ubico el segundo Circulo dentro de la celda;
    }

  // Fila Medio Zona Derecha
    strokeWeight(0);
    
    for (int j = 0; j < fila; j++){
    if (esNegro(0,j)){  
      fill (0);
    }else{
      fill (255);
    }
    ellipse (j*tam+630,195,circulo,circulo);
    ellipse (j*tam+630,215,circulo,circulo);
    }
  
    // Columna Medio Zona Superior
    strokeWeight(0);
    
    for (int j = 0; j < columna; j++){
    if (esNegro(0,j)){  
      fill (0);
    }else{
      fill (255);
    }
    ellipse (592,j*tam+30,circulo,circulo);
    ellipse (615,j*tam+30,circulo,circulo);
    }
  
      // Columna Medio Zona Inferior
    strokeWeight(0);
    
    for (int j = 0; j < columna; j++){
    if (esNegro(0,j)){  
      fill (0);
    }else{
      fill (255);
    }
    ellipse (592,j*tam+230,circulo,circulo);
    ellipse (615,j*tam+230,circulo,circulo);
    }

  // ZONA DE CUADRANTES
  
  //Cuadrante Superior Izquierda
  for  (int i = 0; i<fila; i++){ //Recorro Filas que estan limitidas por cantidad
    for (int j = 0; j<columna; j++){//Recorro Columnas que estan limitidas por cantidad
        if (esNegro(i,j)){ //Verifico si la celda de la culmna y fila i+j es par o impar
          fill(255); //Si es par Coloreo de Blanco
        }else{
          fill(0); //Si es impar Coloreo de Negro
        }
        ellipse (i*tam+410,j*tam+30,circulo,circulo);  //Ubico el primer circulo dentro de la celda;
        ellipse (i*tam+430,j*tam+10,circulo,circulo);  //Ubico el segundo circulo dentro de la celda;
        
    }
  }
    //Cuadrante Superior Derecha
  for  (int i = 0; i<fila; i++){
    for (int j = 0; j<columna; j++){
        if (esNegro(i,j)){
          fill(255);
        }else{
          fill(0);
        }
        ellipse (i*tam+635,j*tam+10,circulo,circulo);
        ellipse (i*tam+650,j*tam+30,circulo,circulo);
        
    }
  }
      //Cuadrante Inferior Izquierda 
  for  (int i = 0; i<fila; i++){
    for (int j = 0; j<columna; j++){
        if (esNegro(i,j)){
          fill(255);
        }else{
          fill(0);
        }
        ellipse (i*tam+410,j*tam+230,circulo,circulo);
        ellipse (i*tam+430,j*tam+250,circulo,circulo);
        
    }
  }
        //Cuadrante Inferior Derecha
  for  (int i = 0; i<fila; i++){
    for (int j = 0; j<columna; j++){
        if (esNegro(i,j)){
          fill(255);
        }else{
          fill(0);
        }
        ellipse (i*tam+650,j*tam+230,circulo,circulo);
        ellipse (i*tam+630,j*tam+250,circulo,circulo);
        
    }
  }
  
}//LLave Final
