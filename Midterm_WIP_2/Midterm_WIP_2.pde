
PImage sky1;
PImage sky3;
PImage night1;
PImage sparkle;
int pointX = 215;
int move = 1;
boolean button = true;
int x = 970;
int y = 30;
int w = 75;
int h = 75;
int [] sparkleX = new int [50];
int [] sparkleY = new int [50];

void setup(){
  size(1080, 720);
  sky1 = loadImage("sky1.jpg");
  sky3 = loadImage("sky3.jpg");
  night1 = loadImage("nightsky1.jpg");
  sparkle = loadImage("sparkle.png");
  
    for (int i = 0; i < sparkleX.length; i++){
    sparkleX[i] = int (random(0, 1080));
    sparkleY[i] = int (random(0, 720));
  }
}

void draw(){
  println(mouseX, mouseY);
  
  if(button){
  firstScene();
  } else if (button){
    secondScene();
  } else {
    thirdScene();
  }  
  fill (139, 32, 28);
  rect (x, y, w, h);
  

  sun(pointX, 270, 250, 250);
  

  
}

void mousePressed(){
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
    button =! button;
  }
}

void sun(int pointX, int pointY, int n, int m){
   fill(252, 224, 0, 240);  
  if(pointX <= width/2){
  ellipse(pointX + move, pointY, n, m);
  move += move;
}
}

void firstScene(){
    image(sky1, 0, 0, 1080, 720);
      //Table 
    fill(255, 225, 160);
    noStroke();
    rect (260, 550, 110, 350);
    rect(785, 550, 110, 350);
    rect(260, 550, 600, 100);
    
}

void secondScene(){
    image(sky3, 0, 0, 1080, 720);
  
   //Table 
   fill(255, 225, 160);
   noStroke();
   rect (260, 550, 110, 350);
   rect(785, 550, 110, 350);
   rect(260, 550, 600, 100);
   
   candles();
}

void thirdScene(){
  image(night1, 0, 0, 1080, 720);
  
  for(int i = 0; i < sparkleX.length; i++){
    image(sparkle, sparkleX[i], sparkleY[i], 20, 20);
  }
  
  //Table 
  fill(255, 225, 160);
  noStroke();
  rect (260, 550, 110, 350);
  rect(785, 550, 110, 350);
  rect(260, 550, 600, 100);
  
  candles();
}

void candles(){
  //blue candle
  stroke(1);
  fill(8, 21, 250);
  rect (500, 450, 60, 100);
  ellipse(530, 450, 60, 30);
  
  //red candle
  fill(255, 0, 0);
  rect(560, 430, 60, 120);
  ellipse(590, 430, 60, 30);
  
  //white candle
  fill(255);
  rect(620, 439, 60, 110);
  ellipse(650, 439, 60, 30);
}
