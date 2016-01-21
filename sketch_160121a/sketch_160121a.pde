void setup() {
  size(600, 400);
  background(200);
  smooth(); 
}

void draw() {
   ellipse(width/2, 73, 55, 55);
   rect(width/2-45, height/2-100, 90, 150);
   rect(width/2-45, height/2+20, 90, 150);
   triangle(30, 175, 30, 120, 15, 147);
   triangle(30, 325, 30, 270, 15, 297);
   triangle(width-30, 175, width-30, 120, width-15, 147);
   triangle(width-30, 325, width-30, 270, width-15, 297);
}