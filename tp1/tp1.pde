PImage miImagen;
void setup() {
  size(800, 400);
  background(255);
  miImagen = loadImage("OscarPecezuelos.png");
}

void draw() {
  background(255);
  image(miImagen, 0, 0, 400, 400);
  fill(93, 80, 64);
  stroke(0);
  strokeWeight(3);
  ellipse(586, 35, 60, 40);
  ellipse(640, 48, 60, 48);
  ellipse(662, 93, 60, 58);
  ellipse(658, 140, 62, 58);
  ellipse(648, 174, 30, 30);
  ellipse(535, 170, 32, 35);
  ellipse(530, 137, 60, 48);
  ellipse(519, 92, 46, 60);
  ellipse(543, 56, 47, 55);
  triangle(555, 295, 555, 351, 542, 352); // mano izq
  strokeWeight(3);
  ellipse(570, 364, 28, 48); // pata 1
  ellipse(595, 363, 27, 50); // pata 2
  ellipse(620, 365, 28, 44); // pata 3
  ellipse(641, 367, 23, 40); // pata 4
  stroke(93, 80, 64);
  ellipse(593, 113, 159, 163); //pelo
  fill(218, 219, 181);
  stroke(0);
  quad(550, 150, 650, 150, 650, 290, 555, 295); //piel
  stroke(218, 219, 181);
  strokeWeight(0);
  ellipse(592, 164, 65, 60);
  strokeWeight(2);
  stroke(0);
  fill(157, 173, 68);
  quad(555, 295, 650, 290, 652, 370, 555, 370); //verde
  fill(189, 209, 78);
  strokeWeight(0);
  quad(556, 315, 649, 311, 655, 328, 556, 330); //rayas claras
  quad(556, 348, 651, 348, 651, 358, 556, 359); //rayas claras
  fill(93, 80, 64);
  strokeWeight(3);
  stroke(0);
  quad(640, 318, 655, 316, 661, 349, 639, 351); // mano der
  fill(184, 185, 122);
  strokeWeight(0);
  stroke(184, 185, 122);
  rect(553, 220, 78, 25);
  ellipse(554, 233, 25, 25); //circulo boca izq
  ellipse(631, 233, 25, 25); //circulo boca der
  strokeWeight(2);
  stroke(0);
  fill(255);
  ellipse(550, 150, 42, 40); //ojo izq
  ellipse(632, 150, 43, 40); //ojo der
  fill(0);
  ellipse(557, 155, 7, 7); //pupila izq
  ellipse(624, 155, 7, 7); //pupila der
  noFill();
  strokeWeight(4);
  line(540, 127, 565, 127);
  line(612, 127, 637, 127);
  strokeWeight(3);
  line(556, 236, 626, 235);
  strokeWeight(2);
  line(542, 210, 554, 210);
  line(543, 216, 554, 215);
  line(643, 209, 653, 210);
  line(642, 215, 654, 216);
  line(400, 0, 400, 400);
}
