/*Miccino Julia, comision 1*/
float posXLogo, posYLogo, tamXLogo, tamYLogo, opaciBotonInicio, posXv, posYv, tamXv, tamYv;
PImage Logo, Violetta, Amigos, Parejas;
PFont fuenteNueva;
String sinopsis;
int pantallaActual;
void setup(){
size(640, 480);
fuenteNueva = loadFont("Corbel-18.vlw");
textFont(fuenteNueva);
textSize(18);
textAlign(LEFT, TOP);
//texto
sinopsis = "Violetta es una serie musical y juvenil argentina\nlanzada en 2012,dirigida por Jorge Nisco y\nprotagonizada por Martina Stoessel.\n  La historia sigue a una adolescente talentosa\nque descubre su pasión por la música mientras\n               enfrenta desafíos familiares y\n                        amistades intensas.";
// imagenes
Logo = loadImage("ViolettaLogo.png");
Violetta = loadImage("Violetta1.png");
Amigos = loadImage("Amigos.png");
Parejas = loadImage("Parejas.png");
//posiciones
posXLogo = 315 ;
posYLogo = 198 ;
tamXLogo = 0.5 ;
tamYLogo = 0.5 ;
opaciBotonInicio = 0;
posXv = 150 ;
posYv = 306 ;
tamXv = 275 ;
tamYv = 412.5 ;
//pantallaActual = 1;
}

void draw(){
//pantalla1(); 
pantalla2(); 
//pantalla3(); 
}

void pantalla1(){
background(255);
imageMode(CENTER);
rectMode(CENTER);
noStroke();
fill(111, 58, 133, opaciBotonInicio);
rect(width/2, 380, 75, 40, 150);
image (Logo, posXLogo, posYLogo, tamXLogo, tamYLogo);
if (tamXLogo <= 360 && tamYLogo <= 194){
  tamXLogo = tamXLogo + 2.4;
  tamYLogo = tamYLogo + 1.3;
 }
if (tamXLogo >= 345 && tamYLogo >= 145 ){
  opaciBotonInicio = opaciBotonInicio + 2;
 }
}


/*void mousePressed(){
  if (mouseX > width/2 - 75/2 && mouseX < width/2 + 75/2 &&
      mouseY > 380 - 40/2 && mouseY < 380 + 40/2) {
    Escribir accion; 
  }
}*/


void pantalla2(){
  background(255);
  imageMode(CENTER);
  image (Logo, width/2, 90, 150, 81);
  tint(255);
image (Violetta, posXv, posYv, tamXv, tamYv);
fill(0);
text(sinopsis, 250, 200);
if(){

}
}

/*
void pantalla3(){

}*/
