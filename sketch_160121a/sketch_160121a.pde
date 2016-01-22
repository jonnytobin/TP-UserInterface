PImage [] tshirt;
boolean rightButtonOver = false;
boolean leftButtonOver = false;
int buttonSize = 20;
int buttonRightX, buttonRightY, buttonLeftX, buttonLeftY;
int buttonRight01X, buttonRight01Y, buttonRight02X, buttonRight02Y, buttonRight03X, buttonRight03Y, buttonLeft01X, buttonLeft01Y, buttonLeft02X, buttonLeft02Y, buttonLeft03X, buttonLeft03Y;
int count; 
void setup() {
  tshirt = new PImage[5];
  for ( int i=0; i<tshirt.length; i++) {
    tshirt[i] = loadImage(i+".png");
  }
  count = 0;
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
  //rect(buttonRightX, buttonRightY, buttonSize, buttonSize);
  //rect(buttonLeftX, buttonLeftY, buttonSize, buttonSize);
  triangle(buttonRight01X, buttonRight01Y, buttonRight02X, buttonRight02Y, buttonRight03X, buttonRight03Y);
  triangle(buttonLeft01X, buttonLeft01Y, buttonLeft02X, buttonLeft02Y, buttonLeft03X, buttonLeft03Y);
  image(tshirt[count], width/2-100, height/2-100);
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
  if (overRightButton(buttonRight01X, buttonRight01Y, buttonRight02X, buttonRight02Y, buttonRight03X, buttonRight03Y)) {
    rightButtonOver = true;
    leftButtonOver = false;
  } else if (overLeftButton(buttonLeft01X, buttonLeft01Y, buttonLeft02X, buttonLeft02Y, buttonLeft03X, buttonLeft03Y)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else {
    leftButtonOver = rightButtonOver = false;
  }
}

/*void update(int x, int y) {
  if (overRightButton(buttonRightX, buttonRightY, buttonSize, buttonSize)) {
    rightButtonOver = true;
    leftButtonOver = false;
  } else if (overLeftButton(buttonLeftX, buttonLeftY, buttonSize, buttonSize)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else {
    leftButtonOver = rightButtonOver = false;
  }
}*/

void mousePressed() {
  if (rightButtonOver) {
    count = (count+1)%tshirt.length;
  }
  if (leftButtonOver) {
    count--; 
    if (count < 0) { 
      count = tshirt.length-1;
    }
  }
}

boolean overRightButton(int x, int y, int x1, int y1, int x2, int y2) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overLeftButton(int x, int y, int x1, int y1, int x2, int y2) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}