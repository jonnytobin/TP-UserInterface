PImage [] tshirt;
int count;

void setup() {
  size(600, 400);
  background(200);
  smooth(); 
}

void draw() {
   tshirt = new PImage[5];
   tshirt[0] = loadImage("Images/tshirt01.jpg");
   tshirt[1] = loadImage("Images/tshirt02.jpg");
   tshirt[2] = loadImage("Images/tshirt03.jpg");
   tshirt[3] = loadImage("Images/tshirt04.jpg");
   tshirt[4] = loadImage("Images/tshirt05.jpg");
  
  
   ellipse(width/2, 73, 55, 55);
   rect(width/2-45, height/2-100, 90, 150);
   rect(width/2-45, height/2+20, 90, 150);
   triangle(30, 175, 30, 120, 15, 147);
   triangle(30, 325, 30, 270, 15, 297);
   triangle(width-30, 175, width-30, 120, width-15, 147);
   triangle(width-30, 325, width-30, 270, width-15, 297);
}