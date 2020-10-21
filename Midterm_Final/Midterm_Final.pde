
PImage sky1;
PImage sky3;
PImage night1;
PImage sparkle;
PImage table; 
PImage flame;
PImage birds;
PFont font1;
PFont font2; 
int pointX = 215;
int moonX = 620;
float move = 5.25;
String state = "beginning";
int x = 30;
int y = 30;
int w = 160;
int h = 80;
int [] sparkleX = new int [50];
int [] sparkleY = new int [50];
boolean button = false;


void setup(){
  size(1080, 720);
  sky1 = loadImage("sky1.jpg");
  sky3 = loadImage("sky3.jpg");
  night1 = loadImage("nightsky1.jpg");
  sparkle = loadImage("sparkle.png");
  table = loadImage("table.png");
  flame = loadImage("flame.png");
  birds = loadImage("birds.png");
  font1 = createFont("SansitaSwashed-Light.ttf", 70);
  font2 = createFont("SansitaSwashed-Regular.ttf", 30);
  textFont(font1);
  textFont(font2);
  
    for (int i = 0; i < sparkleX.length; i++){
    sparkleX[i] = int (random(0, 1080));
    sparkleY[i] = int (random(0, 720));
  }
}

void draw(){
  println(mouseX, mouseY);
  
  if(state == "beginning"){
    startGame();
  }else if (state == "game"){
     secondScene();
  } else if(state == "last scene"){
    thirdScene();
  }
  
  if (button){
    startGame();
  }
}


void mousePressed(){
  if(state == "beginning"){
    state = "game";
  } else if (state == "game"){
    state = "last scene";
  }
  
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
    button = !button;
  }
}

void sun(int pointY, int n, int m){
  fill(252, 224, 0);  
  if(pointX + move <= width/2){
    pointX += move;
  }
  noStroke();
  ellipse(pointX + move, pointY, n, m);
}

void moon (){
  if(moonX + move <= 940){
    moonX += move;
  }
  noStroke();
  fill(162);
  ellipse(moonX + move, 220, 250, 250);
}

void secondScene(){
  
    image(sky3, 0, 0, 1080, 720);
    image(birds, 100, 100, 800, 520);
    fill(255, 225, 160);
    noStroke();
    image(table, 140, 380, 900, 600);

    
    sun(220, 250, 250);
     
    if(millis() >= 7500 && millis() <= 10000 ){ 
    fill(126, 10, 9);
    textFont(font2);
    text("Move your mouse over to the table", 350, 230, 100);
    }
    
    if(mouseX > 260 && mouseX < 894 && mouseY > 550 && mouseY < 718){
      candles();
      fill(195, 150, 190);
      textSize(75);
      textFont(font2);
      text("Press screen to see more.. ", 100, 450);
    }
}

void thirdScene(){
  image(night1, 0, 0, 1080, 720);
  
  if(key == CODED){
    if(keyCode == UP){
  for(int i = 0; i < sparkleX.length; i++){
    image(sparkle, sparkleX[i], sparkleY[i], 20, 20);
  }
  }
  }
  moon();
  
    if(millis() >= 18000 && millis() <= 20000 ){ 
    fill(126, 10, 9);
    textFont(font2);
    text("Press the UP button!", 200, 230, 100);
    }
    println(millis());
    
  //Table 
  fill(255, 225, 160);
  noStroke();
  image(table, 140, 380, 900, 600);
  
  candles();
 
  if(key == CODED);{
     if(keyCode == UP){      
    image(flame, 499, 333, 60, 60);
    image(flame, 565, 301, 60, 60);
    image(flame, 621, 331, 60, 60);  
  }
  }
  

  fill (126, 10, 9);
  rect(x, y, w, h);
  fill(255);
  textFont(font2);
  text("Start Again", 40, 80);
}

void candles(){ 
  //blue candle
  stroke(1);
  fill(8, 21, 250);
  rect (500, 390, 60, 150);
  ellipse(530, 393, 60, 30);
  
  //white candle
  fill(255);
  rect(620, 398, 60, 142);
  ellipse(650, 395, 60, 30);
  
    //red candle
  fill(255, 0, 0);
  rect(560, 364, 70, 176);
  ellipse(595, 366, 70, 30);
  
  //wick
  line(529, 395, 529, 371);
  line(594, 364, 594, 340);
  line(650, 393, 650, 371);
}

void startGame(){
  image(sky1, 0, 0, 1080, 720);
  fill(252, 224, 0); 
  ellipse(pointX, 220, 250, 250);
  textFont(font1);
  fill(255);
  text("Press anywhere on the screen", 130 , 440);
  
}
