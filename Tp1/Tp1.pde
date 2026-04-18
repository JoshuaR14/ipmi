/*Alumno: Joshua Romero, Legajo: 125681/8, Comision: Nº2, TP: Nº1,*/
PImage  Imagen_Joshua;

void setup (){
  size(800, 400);
  Imagen_Joshua = loadImage( "Imagen_trabajo.JPG" ) ;

}
void draw (){
  
    background(174, 225, 240);
   image( Imagen_Joshua, 0, 0, 400, 400 );

  //pasto
  noStroke();
  fill(172, 224, 61);
  rect(400, 270, 400, 130);
  fill(57, 108, 63); 
  ellipse(540, 330, 270, 90);
  
  //pared bordo
  fill(139, 21, 96);
  rect(643, 281, 357, 60 );
  //pared rosa
  fill (250, 139, 230);
  rect(643, 60, 357, 221);
  //techo negro
  fill(0);
  rect(620, 0, 180, 60);
  
  //cuadradito rosa
  strokeWeight(1);
  stroke(0);
  fill (250, 139, 230 );
   rect(635, 60, 165, 10);
   
  fill(139, 21, 96);
  rect(540, 260, 85, 20);
   
   //lineas de puerta
   fill(0);
   line(675, 340, 675, 220);
   fill(0);
   line(775, 340, 775, 220);
   
   //semicirculo de puerta
   stroke(0); 
   fill(250, 139, 230);
   arc(725, 220, 100, 100, PI, TWO_PI);
   
   //escaleras
   strokeWeight(2);
   line(690, 350, 695, 60);
   line(710, 350, 715, 60);
   //escalones
   line(690, 330, 710, 330);
   line(691, 300, 711, 300);
   line(691, 270, 711, 270);
   line(693, 240, 712, 240);
   line(693, 210, 712, 210);
   line(693, 180, 712, 180);
   line(693, 150, 712, 150);
   line(694, 120, 713, 120);
   line(694, 90, 713, 90);
   
   
   //escaleras 2
   line(765, 350, 770, 60);
   line(785, 350, 790, 60);
    //escalones 2
   line(765, 330, 785, 330);
   line(765, 300, 785, 300);
   line(766, 270, 786, 270);
   line(766, 240, 786, 240);
   line(767, 210, 787, 210);
   line(767, 180, 787, 180);
   line(768, 150, 788, 150);
   line(768, 120, 788, 120);
   line(768, 90, 788, 90);
   
   //cartel
   strokeWeight(1);
   fill(250, 139, 230);
   rect(720, 75, 15, 290);
   rect(490, 120, 15, 210);
    rect(605, 190, 15 ,160);
   rect(505, 135, 215, 55);
   fill(167, 19, 83);
   rect(510, 140, 205, 45);
   rect(488, 300, 20, 35);
   rect(600, 315, 24, 35);
   rect(718, 330, 20, 35);
   
   stroke(0);
   fill(255);
   text("GENERAL BELGRANO", 510, 170);
   
 
  //Cordenadas del mouse
   fill(0);
   textSize( 24 );
  text( mouseX + " / " + mouseY, mouseX, mouseY );
} 
