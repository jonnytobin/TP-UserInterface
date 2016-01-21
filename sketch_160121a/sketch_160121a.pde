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
   triangle(width-45, 175, width-45, 120, width-30, 147);
   triangle(width-45, 325, width-45, 270, width-30, 297);
}