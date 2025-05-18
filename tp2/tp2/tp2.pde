/*Miccino Julia, comision 1*/
float rYp5, opagpv, gpvY, opaBlanco, posXLogo, posYLogo, tamXLogo, tamYLogo, opaciBotonInicio, posXv, posYv, tamXv, tamYv, posxtexto,
  posytexto, opaciTV, posxAmi, posyAmi, tamxAmi, tamyAmi, opactextAmi, posYparejastext, posXparejastext, pXpare, pYpare, tXpare, tYpare, opaParejas1, opaParejas2, opaParejas3, posXp;
PImage Logo, logoblanco, Violetta, Amigos, Parejas, Leon, Tomas, Diego;
PFont fuenteNueva;
String sinopsis, amistades, parejastext, gpv, botonreinicio;
int pantallaActual, tiempoInicio;
void setup() {
  size(640, 480);
  fuenteNueva = loadFont("Corbel-18.vlw");
  textFont(fuenteNueva);
  textSize(18);
  pantallaActual = 1;
  tiempoInicio = frameCount;
  //texto
  sinopsis = "Violetta es una serie musical y juvenil argentina\nlanzada en 2012,dirigida por Jorge Nisco y\nprotagonizada por Martina Stoessel.\n  La historia sigue a una adolescente talentosa\nque descubre su pasión por la música mientras\n               enfrenta desafíos familiares y\n                        amistades intensas.";
  amistades = "Los mejores amigos de Violetta son Francesca,Camila y Maxi,\ncompañeros del Studio 21 que la acompañan en su camino musical con lealtad,\ntalento y una amistad incondicional";
  parejastext = "Violetta estuvo en pareja con Tomás, León y Diego.\nCada uno aportó algo único a su vida, pero Diego destacó\n                          por su carisma y atractivo, siendo una de las\n                                 parejas más recordadas por los fans.";
  gpv = "Gracias por ver";
  // imagenes
  Logo = loadImage("ViolettaLogo.png");
  logoblanco = loadImage("logoblanco.png");
  Violetta = loadImage("Violetta1.png");
  Amigos = loadImage("Amigos.png");
  Parejas = loadImage("Parejas.png");
  Leon = loadImage("Leon.png");
  Tomas = loadImage("tomas.png");
  Diego = loadImage("diego.png");
  //posiciones
  //Pantalla 1
  posXLogo = 315 ;
  posYLogo = 198 ;
  tamXLogo = 0.5 ;
  tamYLogo = 0.5 ;
  opaciBotonInicio = 0;
  //Pantalla 2
  posXv = 150 ;
  posYv = 306 ;
  tamXv = 275 ;
  tamYv = 412.5 ;
  posxtexto = 0;
  posytexto = 200;
  opaciTV = 0;
  //Pantalla 3
  posxAmi = 340;
  posyAmi = 800 ;
  tamxAmi = 346.2339 ;
  tamyAmi = 475;
  opactextAmi = 0;
  //Pantalla 4
  posYparejastext = 160;
  posXparejastext = 180;
  pXpare = 168;
  pYpare = 314;
  tXpare = 582.1543;
  tYpare = 334.57;
  opaParejas1 = 0;
  opaParejas2 = 0;
  opaParejas3 = 0;
  posXp = 642;
  //Pantalla 5
  opaBlanco = 0;
  opagpv = 0;
  gpvY = 484;
  rYp5 = 484;
  botonreinicio = "Reiniciar";
}

void pantalla1() {
  background(255);
  imageMode(CENTER);
  rectMode(CENTER);

  noStroke();
  fill(111, 58, 133, opaciBotonInicio);
  rect(width/2, 380, 75, 40, 150);
  fill(255);
  textAlign(CENTER);
  text("Iniciar", width/2, 385);
  image (Logo, posXLogo, posYLogo, tamXLogo, tamYLogo);
  if (tamXLogo <= 360 && tamYLogo <= 194) {
    tamXLogo = tamXLogo + 2.4;
    tamYLogo = tamYLogo + 1.3;
  }
  if (tamXLogo >= 345 && tamYLogo >= 145 ) {
    opaciBotonInicio = opaciBotonInicio + 2;
  }
}





void pantalla2() {
  background(255);
  imageMode(CENTER);
  image (Logo, width/2, 90, 150, 81);
  textAlign(LEFT, TOP);
  tint(255);
  fill(0, 0, 0, opaciTV);
  text(sinopsis, posxtexto, posytexto); //250, 200
  image (Violetta, posXv, posYv, tamXv, tamYv);
  if (posxtexto < 250 ) {
    posxtexto = posxtexto + 2;
    opaciTV = opaciTV + 2;
  }
}


void pantalla3() {
  background(255);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0, opactextAmi);
  text(amistades, width/2, posytexto);
  imageMode(CENTER);
  image (Logo, width/2, 90, 150, 81);
  image (Amigos, posxAmi, posyAmi, tamxAmi, tamyAmi); //475
  if ( posyAmi > 475) {
    posyAmi = posyAmi - 2;
    opactextAmi= opactextAmi + 2;
  }
}

void pantalla4() {
  background(255);
  textAlign(LEFT, TOP);
  imageMode(CENTER);
  tint(255, 255);
  image (Logo, 510, 402, 150, 81);
  fill(0, 0, 0, 255);
  text(parejastext, posXparejastext, posYparejastext);
  image (Parejas, pXpare, pYpare, tXpare, tYpare);
  tint(255, opaParejas1);
  image(Leon, 327.855, 80.4565, 127, 124  );
  tint(255, opaParejas2);
  image(Tomas, 145, 82, 116, 116);
  tint(255, opaParejas3);
  image(Diego, 510.2988, 78.27, 84.5892, 108.8547  );
  fill(111, 58, 133);
  noStroke();
  rectMode(CORNER);
  rect(posXp, 130, 640, 15);
  if (posXp > 0) {
    posXp = posXp - 6;
  }
  if (posXp == 0) {
    opaParejas1 = opaParejas1 + 2;
    opaParejas2 = opaParejas2 + 3;
    opaParejas3 = opaParejas3 + 1;
  }
}

void pantalla5() {
  background(111, 58, 133);
  fill(111, 58, 133);
  noStroke();
  imageMode(CENTER);
  tint(255, opaBlanco);
  image (logoblanco, posXLogo, posYLogo, 360, 194);
  textAlign(CENTER, CENTER);
  fill(255, opagpv);
  text(gpv, width/2, gpvY);
  rectMode(CENTER);
  rect(width/2, rYp5, 144, 60, 15); //390
  fill(111, 58, 133);
  text(botonreinicio, width/2, rYp5 );
  if (posXLogo == 315) {
    opaBlanco = opaBlanco + 1.5;
    opagpv = opagpv + 1.5;
  }
  if (gpvY > 330) {
    gpvY = gpvY - 2.2;
  }
  if (rYp5 > 390) {
    rYp5 = rYp5 - 1.5;
  }
}
void draw() {
  if (pantallaActual == 1) pantalla1();
  if (pantallaActual == 2) pantalla2();
  if (pantallaActual == 3) pantalla3();
  if (pantallaActual == 4) pantalla4();
  if (pantallaActual == 5) pantalla5();

  // transición
  if (pantallaActual >= 2 && frameCount - tiempoInicio >= 480) {
    pantallaActual++;
    tiempoInicio = frameCount;
  }
}

void mousePressed() {
  if (pantallaActual == 1) {
    if (mouseX > width/2 - 75/2 && mouseX < width/2 + 75/2 &&
      mouseY > 380 - 40/2 && mouseY < 380 + 40/2) {
      pantallaActual = 2;
      tiempoInicio = frameCount;
    }
  }

  if (pantallaActual == 5) {
    if (mouseX > width/2 - 144/2 && mouseX < width/2 + 144/2 &&
      mouseY > rYp5 - 60/2 && mouseY < rYp5 + 60/2) {
      pantallaActual = 1;
      tiempoInicio = frameCount;

      // Reinicio variables
      tamXLogo = 0.5;
      tamYLogo = 0.5;
      opaciBotonInicio = 0;
      posxtexto = 0;
      opaciTV = 0;
      posyAmi = 800;
      opactextAmi = 0;
      posXp = 642;
      opaParejas1 = 0;
      opaParejas2 = 0;
      opaParejas3 = 0;
      opaBlanco = 0;
      opagpv = 0;
      gpvY = 484;
      rYp5 = 484;
    }
  }
}
