void hacerGrilla(){  //Creacion de Funcion Simple

  strokeWeight(0);//Determino que en todo el programa no hay peso en los bordes;
  
  tam = (width/2) /cant+1;//inicio variable atravez de los pixeles que me quedan en pantalla, y la cantidad de columnas o filas que necesito;
  
 for (int i= 0;i < cant; i++){ //Recorro Cierta cantidad de pixeles
    for (int j = 0; j <cant ; j++){//Recorro Cierta cantidad de pixeles

      float centroX = i*tam + 400 + tam/2; //Mido el centro de cada celda en x
      float centroY = j*tam + 1 + tam/2; //Mido el centro de cada celda en y

      float d = dist(mouseX, mouseY, centroX, centroY);

      if(mousePressed && d < 450){ //Al presionar el mousse y la distancia es menor a la cantidad de pixeles dados, se activa el evento

        fill(random(255),random(255),random(255)); //Coloreo con la funcion de random;

      }else{

        if (esNegro(i,j)) { //Determino si la celda que estoy por crear es par o impar
          fill(0);//Si Es Par(True) coloreo de Negro
        } else {
          fill(255);//Si Es ImPar(False) coloreo de Blanco
        }

      }

      rect(i*tam+400, j*tam+1, tam, tam); //Creo el rectangulo que sera Celda de la grilla;
          }
  }
  // Funcion De Los Circulos
  cruz(posfila,poscolumna); //Funcion Con Parametros (Que no retorna) que crea los circulos en las celdas
}

void guia(){
  fill(150);
  rect(60,260, 280,130);
  fill(255);
  textSize(18);
  text("G = Mostrar/Ocultar guia",70,280);
  text("R = Reiniciar obra",70,300);
  text("A = Aumentar patron",70,320);
  text("D = Disminuir patron",70,340);
  text("E = Girar derecha",70,360);
  text("Q = Girar izquierda",70,380);
}
