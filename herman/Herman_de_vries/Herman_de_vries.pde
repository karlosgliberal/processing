import processing.pdf.*;

int ppi = 300; // pixels per inch
int width_mm = 910; // width in millimeters
int height_mm = 610; // height in millimeters

color agua_rocio = color(199,225,231);
color oceano = color(69, 87, 07);
color luminoso = color(58, 107, 153);

int col;

color [] colarray = {
  color(176, 220, 226),
  color(45, 68, 89),
  color(0, 87, 138)
};


float diam;
float x;
float y;



void setup() {
  int w = mm2px(1, ppi);
  int h = mm2px(1, ppi);
  background(255);


  //println(width_mm + " x " + height_mm + " mm");
  //println(w + " x " + h + " px");

  size(10749, 7205, PDF, "movida.pdf");

for (int i = 0; i < 150; i = i+1) {
  col = colarray[(int)random(0,3)];
  diam = random(300);
  x = random(width);
  y = random(height);
  noStroke();
  fill(col);
  ellipse(x, y, diam, diam);
 }



exit();

}


// convert millimeters to pixels, using the specified pixel density
int mm2px(float mm, float ppi) {
  return ceil((mm / 25.4 * ppi));
}
