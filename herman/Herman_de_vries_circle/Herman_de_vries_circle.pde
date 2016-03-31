import processing.pdf.*;
float max_distance;
int ppi = 300; // pixels per inch
int width_mm = 910; // width in millimeters
int height_mm = 620; // height in millimeters

int w = mm2px(20, ppi);
int h = mm2px(20, ppi);

color agua_rocio = color(199,225,231);
color oceano = color(69, 87, 07);
color luminoso = color(58, 107, 153);

color [] colarray = {
  color(176, 220, 226),
  color(45, 68, 89),
  color(0, 87, 138)
};

int bolas_horizontales = 33;
int bolas_verticales = 23;
int diametro;
int[] diametros = {24, 48, 71, 95, 142, 189};

void setup() {
  //size(910, 620);
  size(10749, 7323, PDF, "herman_de_vries_dot.pdf");
  noStroke();
  background(255);

  println(width_mm + " x " + height_mm + " mm");
  println(w + " x " + h + " px");

  for(int i = 237; i <= width; i += 331) {
    for(int j = 237; j <= height; j += 331) {
      fill(0);
      diametro = diametros[3];
      ellipse(i, j, diametro, diametro);
    }
  }

pushMatrix();
translate(100, 100);
rotate(radians(-5));
  for(int i = 237; i <= width; i += 331) {
    for(int j = 237; j <= height; j += 331) {
      fill(0);
      diametro = diametros[1];
      ellipse(i, j, diametro, diametro);
    }
  }
popMatrix();
  exit();
}

// convert millimeters to pixels, using the specified pixel density
int mm2px(float mm, float ppi) {
  return ceil((mm / 25.4 * ppi));
}
