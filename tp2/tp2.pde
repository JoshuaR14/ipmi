/*Alumno: Joshua Romero
  Comision: C2
  Trabajo Practico n°2*/
//DECLARACION DE VARIABLE
PImage imagen_menu, pantalla2, imagen_nubes, logo_mario, mini_mario, mario, tubo, block,enano, peach, bowser,fondo2, fondo3,fuego,fondo_final,corazon;
int xnube;
float xenano;
int Estado, opacidad,opacidad2, posy, posy2, posy3, post4,post5,post6, opacidad_fondo,posx4, posmario, posmario2, posbowser,posbowsery,pospeach,posfinal, postexto,poscorazon,posboton, posbtexto;
float velocidad, posx, posx2 ,posx3, post, post2, post3, tiempo;
PFont fuente_mario;



void setup(){
  pixelDensity(1);
  
  // Inicio de Varaibles
  opacidad = 255;
  opacidad2 = 0;
  Estado = 0;
  xnube = 640;
  xenano = 420;
  posmario2 = -50;
  velocidad = -4;
  posx= 640;
  posx2= 640;
  posx3= 640;
  posx4 = 640;
  post= 640;
  post2 = 640;
  post3 = 640;
  post4 = 640;
  post5 = 640;
  posy = 250;
  posy2 = -300;
  posy3 = -100;
  post6 = 640;
  posmario = -50;
  posbowser = 700;
  posbowsery = 230;
  pospeach = 500;
  opacidad_fondo = 0;
  posfinal = -200;
  postexto = -200;
  poscorazon = -200;
  posboton = 700;
  posbtexto = 700;
  
  // Carga de imagenes y Fuentes
  size (640, 480);
  mini_mario = loadImage("MiniMario.png");
  imagen_menu = loadImage("mario1.jpg");
  imagen_nubes = loadImage ("pngwing.com.png");
  pantalla2 = loadImage ("mario1.jpg");
  logo_mario = loadImage("Super_Mario_Bros._Logo.svg.png");
  mario = loadImage ("marioelgrandepng.png");
  tubo = loadImage ("tubo1.png");
  block = loadImage("Lucky _block.png");
  enano = loadImage("Enano.png");
  bowser = loadImage ("bowser.png");
  peach = loadImage ("peach.png");
  fondo2 =loadImage ("fondo_mario2.png");
  fondo3 = loadImage ("fondo_mario3.png");
  fuego = loadImage ("bola_fuego.png");
  fondo_final = loadImage("fondo_final.png");
  corazon = loadImage ("corazon.png");
  
  // Fuente de Mario
  fuente_mario = createFont("Super Mario Bros. 2.ttf", 38);
  textFont (fuente_mario);
}
//Pantalla 0
void draw(){
  if (Estado == 0 ){
image(imagen_menu, 0, 0, 640, 480 );
image (mini_mario, 0, 355, 50, 50); 
image(imagen_nubes, xnube, 50, 200, 200);
// Animaciones
  xnube = xnube - 3;
  if (xnube < -200 ) {
    xnube = 640;}
  image (logo_mario, 120, 50, 400, 200);
  
  
// Textos Del Menu
  fill (255);
  textAlign (CENTER, CENTER);
  text("1 Player Game", width/2, 280);
  fill (255);
  text("2 Player Game", width/2, 320);
//Cordenadas Mousse
  fill(0);
  textSize( 20);
  text( mouseX + " " + mouseY, mouseX, mouseY );
  }
  
//Pantalla 1
  if ( Estado == 1){
  image(pantalla2 , 0, 0, 640, 480 );
  image(tubo, 450, 325, 100, 100);
  image(tubo, 550, 264, 110, 175);
  image(imagen_nubes, xnube, 30, 150, 150);
  image(enano, xenano, 355, 50, 50);
// Animaciones
  xnube = xnube - 3;
  if (xnube < -200 ) {
    xnube = 640;}

  // Movimiento
  xenano = xenano + velocidad;
  // Rebote izquierda
  if(xenano <= 0){
    velocidad = 4;
  }
  // Rebote derecha
  if(xenano >= 420){
    velocidad = -4;
  }
     image(block, 2, 230, 80, 80);
     //MARIO DIALOGO
     tint(255,opacidad);
     image(mario, -10, 134, 100, 100);
     
     tint(255,255);
     noStroke();
     fill (50,100);
     rect(posx, 190, 340, 130);
     if (posx >= 105){
     posx= posx - 50;
     }
   //DIALOGO 1  
     textAlign(LEFT);
     textSize(10);
     fill(255);
    text ("¡Hola! Mi nombre es Mario,\nun plomero del Reino Champiñón.\nHace poco, el malvado Rey Koopa,\ntambién conocido como Bowser,\napareció junto a su ejército de\ntortugas criaturas extrañas.\nÉl invadió este reino y usó\nmagia para transformar a sus\nhabitantes en piedras, ladrillos\ny plantas.", post, 210);
  //CRONOMETRO
   if (millis() - tiempo >= 1500) {
    if (post >= 120 ){
     post = post - 60;
     }
    }
   if (millis()- tiempo >= 10000){
   if (posx >= -500 && post >= -500) {
     posx = posx - 50;
     post = post - 50;
   
   }
   }
   //DIALOGO 2
    if (millis()- tiempo >= 11000){
     noStroke();
     fill (50,100);
     rect(posx2, 190, 350, 120);
     if (posx2 >= 105){
     posx2= posx2 - 50;
     }
     textSize(10);
     fill(255);
    text ("La única persona que puede\ndeshacer ese hechizo es la\nPrincesa Peach, pero Bowser la\nsecuestró y la llevó hasta su \ncastillo. Por eso estoy acá: debo\nrecorrer distintos mundos llenos\nde peligros, saltar obstáculos,\nenfrentar enemigos y encontrar el\ncamino hasta ella.",post2, 210);
     //CRONOMETRO 2
     if (millis() - tiempo >= 12000) {
    if (post2 >= 120 ){
     post2 = post2 - 60;
     }
  }
  // Salida de rectangulo y textos 2
     if (millis()- tiempo >= 22000){
   if (posx2 >= -500 && post2 >= -500) {
     posx2 = posx2 - 50;
     post2 = post2 - 50;
     }
   
   }
   }
   //DIALOGO 3
   if (millis()- tiempo >= 23000){
     noStroke();
     fill (50,100);
     rect(posx3, 190, 380, 130);
     if (posx3 >= 105){
     posx3= posx3 - 50;
     }
      textSize(10);
      fill(255);
      text("Durante mi viaje voy a enfrentarme\na Goombas, Koopas y muchas trampas,\npero no pienso rendirme.\nMi mision es derrotar a Bowser,\nsalvar a la princesa\ny devolver la paz al Reino Champiñon.\n\n       ¡Ahora es momento de\n       comenzar la aventura!", post3, 210);
    //CRONOMETRO3
    if (millis() - tiempo >= 23500) {
    if (post3 >= 120 ){
     post3 = post3 - 60;
     }
  }
  //Salida de texto
   if (millis()- tiempo >= 32000){
   if (posx3 >= -500 && post3 >= -500) {
     posx3 = posx3 - 50;
     post3 = post3- 50;
     //desaparece mario Dialogo
     if (opacidad > 0) {
     opacidad = opacidad -30;
     }
   }
   }
   //Aparece MiniMario
   if (millis() - tiempo >= 33000){
      
       tint(255,opacidad2);
      image (mini_mario, 580, posy, 50,50);
      tint(255,255);
      image(tubo, 550, 264, 110, 175);
        opacidad2 = opacidad2 + 20;
      }
   //Desaparece Minimario
      if (millis() - tiempo >= 38000){
        if (posy <= 500){
          posy = posy +10;
          }
      }
      // Cambio De Estado Y luego pantalla nueva
      if(millis() - tiempo >= 42000){
        tiempo =millis();
        Estado = Estado +1;
}
    }
   }
            //Pantalla 2
    if (Estado == 2) {
      image (fondo2,0,0,640,480);
      //Fondo Oculto
      /*tint(255,opacidad_fondo);
      image (fondo3, 0, 0, 640,480);*/
      
      noStroke();
      fill(150, 200);
      rect(170, posy2, 365, 140);
      if (posy2 < 330) {
        posy2 = posy2 + 10;
      }
      // Caida Mini Mario
     image(mini_mario, 50, posy3, 50, 50);
     if (posy3 <= 360){
     posy3 = posy3 + 10;
     }
     // Texto pantalla 2
     fill(255);
     textSize(10);
     text("Mario deberá atravesar distintos\nescenarios a lo largo de su\naventura.Primero recorrerá verdes\npraderas y caminos llenos de\nenemigos, donde tendrá que saltar\nobstáculos y derrotar criaturas\n peligrosas.\nLuego se adentrará en cuevas\noscuras y castillos repletos de\ntrampas, plataformas y lava,\nenfrentándose a desafíos cada vez\nmás difíciles.", post4, 345);
     if ( post4 >= 190){
       post4 = post4 -10;
     }
     //Salida del cuadro y texto
     if (millis() - tiempo >= 12000){
       if (posy2 < 550){
         posy2= posy2 + 50;
       }
       if (post4 >= -500){
         post4 = post4 - 10;
       }
       
     }
     if (millis()- tiempo >= 14000){
       tiempo = millis();
       Estado = Estado +1;
     }
    }
     //Pantalla 3
     if (Estado == 3){
       image(fondo3, 0, 0, 640,480);
       image (mini_mario, posmario, 250,50,50);
       image (fuego, posx4, 140, 20,20);
       image (fuego, posx4, 210, 20,20);
       image(bowser, posbowser,posbowsery,70,70);
       //Movimiento Mario
       if (posmario <=170){
         posmario = posmario+10;
       //Movimiento BOWSER
       if(posbowser >= 510){
         posbowser = posbowser - 10;
       }
     }
     //ANIMACION BOLA DE FUEGO
      posx4 = posx4 - 10;
      if (posx4 < -200 ) {
        posx4 = 640;}
       //Creacion Rectangulo texto
      noStroke();
      fill(0,180);
      rect(330, post5, 260, 90);
      if (post5 >= 320){
       post5 = post5 -10; 
      }
      //Texto Pantalla 3
      fill(255);
      textSize(8);
      text("Finalmente, después de superar\ntodos los peligros y combatir\ncontra Bowser, Mario logrará\nllegar hasta el castillo final\npara encontrarse con la\nPrincesa Peach y rescatarla.",340,post6);
      if(post6 >= 340){
        post6 = post6 - 10;
      }
      //final de pantalla
      if (millis()- tiempo >= 10000){
        if (post5 >= -200){
          post5 = post5 - 10;
          }
        if (post6 >= -200){
        post6 = post6 - 10;
        }
        if (posmario<=700){
          posmario=posmario + 10;
        }
        //MUERTE BOWSER
        if(posbowsery <= 500){
        posbowsery= posbowsery +10;
        }
    }
    //Preparacion Cambio de pantalla
    if (millis()-tiempo >= 13000){
      Estado = Estado + 1;
     tiempo = millis();
    }
     } 
     //PANTALLA 4 Y FINAL
     if (Estado == 4){
       ;
       image(fondo_final,0,0,640,480);
       image (mini_mario, posmario2, 355,50,50);
       image (peach, pospeach, 340, 70,70);
       image (corazon, poscorazon, 230, 90,90);
       //Boton Menu
       fill(203, 147, 62);
       rect(posboton, 420, 80,40);
       textAlign(CENTER,CENTER);
       fill(255);
       textSize(10);
       text("volver\nal\nmenu",posbtexto,440);
       
       //Cuadro de dialogo final
       fill(203, 147, 62, 100);
       rect(posfinal, 100, 310, 100);
       if(posfinal <= 170){
         posfinal=posfinal+20;
       }
       //Dialogo Final
       textAlign(LEFT);
       fill(255);
       textSize(10);
       text("Y asi fue como Mario pudo\nencontrarse con la pricensa\nPeach rescatandola!\ny salvando al reyno Champiñon.\n\n    QUE VIVA EL AMORRR!!!",postexto, 120);
       if(postexto <= 180){
         postexto = postexto+10;
       }
       
      //ENCUENTRO MARIO Y PEACH 
     if(posmario2 <= 70){
       posmario2 = posmario2 + 10;
     }
     if (millis()-tiempo >= 3000){
       if(pospeach >= 340){
         pospeach = pospeach -10;
       }
       if(posmario2 <=280){
         
         posmario2 = posmario2 + 10;  
       }
     }
     //Corazon Final
     if (millis() - tiempo >= 3500){
       if (poscorazon <= 280){
         poscorazon = poscorazon +10;
       }
     } 
    // ANIMACION DE BOTON DE MENU
    if (millis()- tiempo >= 4500){
      if (posbtexto >= 580 ){
        posbtexto = posbtexto - 10;
      }
      if(posboton >= 540){
        posboton = posboton - 10;
      }
    }
     }
     
 //Cordenadas Mouse    
   fill(255);
  textSize( 20);
  text( mouseX + " " + mouseY, mouseX, mouseY );
}


// Eventos De Mosuse
  void mousePressed(){ 
// Botones En Los Textos    
  if(mouseX > 190 && mouseX < 450 &&  mouseY > 270 && mouseY < 290){
    Estado = Estado + 1;
    tiempo = millis();}
   else if(mouseX > 190 && mouseX < 450 &&  mouseY > 310 && mouseY < 330){
    Estado = Estado + 1;
    tiempo = millis();}
    //Si Precionas Abajo A la derecha Reinicia todo
  if(mouseX > 540 && mouseX <610 && mouseY > 420 && mouseY < 460){
  reiniciarJuego();
  }
}
