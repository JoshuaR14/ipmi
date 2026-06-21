// https://youtu.be/IHKPy6lrcHU
//  Joshua Romero Com2; tp Nº3
PImage ejemplo;
int posfila = 5; //Variable de cantidad de filas por cuadrante;
int poscolumna = 5; //Vairble de cantidad de Columnas por cuadrante;
int circulo = 11; // Tamaño de los circulos de las celdas
int cant = 11; // cantidad total de celdas por columnas y filas;
int tam; 
boolean moverCirculos = false; //variable que permite dejar el tamaño de los circulos por default;
boolean mostrarGuia  = false;
float angulo = 0;

//Funcion que rentorna un booleano si la posicion de esa celda es par o es impar
boolean esNegro (int posx, int posy){
   return ((posx + posy) % 2 == 0); //Si es 0 = True, y si es 1 = False
}
void setup (){
  size(800,400);
  ejemplo = loadImage("16.JPEG");
  
}

void draw (){
  background(120);
  image(ejemplo,0,0,400,400);
  
   if (moverCirculos){
  circulo = int(map(mouseX,400,800,11,25));
}

  // limita el valor de circulo al intentar restar de mas, cuando este vale 5
  circulo = constrain(circulo, 5, 25);


  //Cuerpo de la Imagen
  pushMatrix(); //Pusheo para no romper nada a futuro;

  translate(600,200); //Ubica el translate en el centro de mi imagen (Cordenada 600,200);
  rotate(radians(angulo)); //Va a rotar en base a lo que determine en la variable angulo
  translate(-600,-200); //para acomodar nuevamente las cordenadas

  hacerGrilla(); // Funcion Simple que Arma la Grilla

  popMatrix(); //popeo para no romper nada a futuro;
  if(mostrarGuia){
    guia();
  }
  //Cordenadas Del Mousse
  fill(58,178,0);
  textSize(24);
  text(mouseX + " / " + mouseY, mouseX, mouseY);
}  

void keyPressed(){  
  //Guia de Eventos
  if(key == 'g' || key =='G'){
    mostrarGuia = !mostrarGuia;
  }

  
  //Evento para reiniciar la obra
  if(key == 'r' || key == 'R'){
    posfila = 5;
    poscolumna = 5;
    circulo = 11;
    cant = 11;
    moverCirculos = false;
    angulo = 0;
  }
  //Evento Para Aumentar las Celdas y el tamaño de los circulos;
  if (key == 'a' || key == 'A'){
    cant= cant+2;
    posfila++;
    poscolumna++;
    circulo++;
  }
  //Evento para disminuir las celdas y el tamaño de los circulos;
    if ((key == 'd' || key == 'D') && cant > 3){
    cant= cant-2;
    posfila--;
    poscolumna--;
    circulo--;
    
  }
  // Evento para rotar la imagen Completa hacia la derecha
  if(key == 'e' || key == 'E'){
  angulo += 10;
  }
  // Evento para rotar la imagen Completa hacia la Izquierda
  if(key == 'q' || key == 'Q'){
  angulo -= 10;
  }
  
}
// Evento al mover el mouse
void mouseMoved(){
  moverCirculos = true;
}
