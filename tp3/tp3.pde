// Julia Miccino comision 1
// agregar link Youtbue
color colFon, colFC;
PImage Referencia;
void setup() {
  size(800, 400);
  background(255);
  Referencia = loadImage("ImagenReferencia.png");
  figuraCentral();
  colFon= color(random(255));
  colFC= color(random(255));
}

void draw() {

  for (int posX=410; posX<800; posX+=31.5) {
    for (int posY=0; posY<=390; posY+=20) {
      fill(0);
      ellipse(posX, posY, 16, 8);
    }
  }
  for (int posX=394; posX<806; posX+=31.5) {
    for (int posY=10; posY<=390; posY+=20) {
      fill(0);
      ellipse(posX, posY, 16, 8);
    }
  image(Referencia, 0, 0, 400, 400);
}
}
void figuraCentral() {
  float centroX = 600;
  float centroY = height /2;

  for (int fc = 380; fc > 0; fc -= 9) {
    float opacidad = map(fc, 350, 0, 0, 255);
    noStroke();
    fill(0, opacidad);
    ellipse(centroX, centroY, fc, fc / 1.7);
  }
}
