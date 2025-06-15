// Julia Miccino - Comisión 1
//https://youtu.be/zl4HaSgLygs
PImage Referencia;
color colorFondo = color(0);
color colorFigura = color(0);

void setup() {
  size(800, 400);
  Referencia = loadImage("ImagenReferencia.png");
}

void draw() {
  background(255);
  dibujarFondo(13, 40);
  float centroX = 600;
  float centroY = height / 2;

  for (int tam = 400; tam > 0; tam -= 10) {
    float opacidad = map(tam, 0, 400, 255, 0);
    fill(colorFigura, opacidad);
    noStroke();
    ellipse(centroX, centroY, tam, tam / 1.5);
  }
  image(Referencia, 0, 0, 400, 400);
}

void dibujarFondo(int columnas, int filas) {
  for (int fila = 0; fila < filas; fila++) {
    float desplazarX = calcuDespla(fila);
    for (int col = 0; col < columnas; col++) {
      float x = 410 + col * 32 + desplazarX;
      float y = fila * 10;
      fill(colorFondo);
      noStroke();
      ellipse(x, y, 16, 10);
    }
  }
}

float calcuDespla(int fila) {
  if (fila % 2 == 0) {
    return 0;
  } else {
    return 16;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    colorFigura = color(random(255), random(255), random(255));
  }
  if (mouseButton == RIGHT) {
    colorFondo = color(random(255), random(255), random(255));
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    colorFondo = color(0);
    colorFigura = color(0);
  }
}
