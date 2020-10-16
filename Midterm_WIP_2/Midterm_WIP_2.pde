
PImage sky;
int [] pointX = new int [100];

float move = 2.25;

void setup(){
  size(1080, 720);
  sky = loadImage("sky1.jpg");
  for (int i = 0; i < 50; i++){
    pointX[i] = int (215);
  }
}

void draw(){
  println(mouseX, mouseY);
  
  image(sky, 0, 0, 1080, 720);
  
  candles();
  fill(255, 225, 160);
  noStroke();
  rect (260, 550, 110, 350);
  rect(785, 550, 110, 350);
  rect(260, 550, 600, 100);


  fill(252, 224, 0, 240);  
  for(int i = 0; i < pointX.length; i++){
  ellipse(pointX[i] + move, 270, 250, 250);
  }
  
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
  rect(620, 450, 60, 110);
  ellipse(650, 450, 60, 30);
}
