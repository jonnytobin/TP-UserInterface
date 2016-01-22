PImage [] tshirt;
boolean rightButtonOver = false;
boolean leftButtonOver = false;
int buttonSize = 20;
int buttonRightX, buttonRightY, buttonLeftX, buttonLeftY; 

void setup() {
  tshirt = new PImage[5];
  for ( int i=0; i<tshirt.length; i++) {
    tshirt[i] = loadImage(i+".jpg");
  }

  size(600, 400);
  background(50);
  smooth();
  buttonLeftX = 30;
  buttonLeftY = 300;
  buttonRightX = width-30;
  buttonRightY = 300;
}



void draw() {
  update(mouseX, mouseY); 
  background(50);
  rect(buttonRightX, buttonRightY, buttonSize, buttonSize);
  rect(buttonLeftX, buttonLeftY, buttonSize, buttonSize);
  image(tshirt[0], width/2-100, height/2-100);
  //ellipse(width/2, 73, 55, 55);
  //rect(width/2-45, height/2-100, 90, 150);
  //rect(width/2-45, height/2+20, 90, 150);
  noStroke();
  triangle(30, 225, 30, 170, 15, 197);
  //triangle(30, 325, 30, 270, 15, 297);
  triangle(width-30, 225, width-30, 170, width-15, 197);
  //triangle(width-30, 325, width-30, 270, width-15, 297);
}

void update(int x, int y) {
  if (overRightButton(buttonRightX, buttonRightY, buttonSize, buttonSize)) {
    rightButtonOver = true;
    leftButtonOver = false;
  } else if (overLeftButton(buttonLeftX, buttonLeftY, buttonSize, buttonSize)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else {
    leftButtonOver = rightButtonOver = false; 
  }
}

void mousePressed() {
  if (rightButtonOver) {
    tshirt[i]++;
  }
  if (leftButtonOver) {
    tshirt[i]++;
  }
}

boolean overRightButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overLeftButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}