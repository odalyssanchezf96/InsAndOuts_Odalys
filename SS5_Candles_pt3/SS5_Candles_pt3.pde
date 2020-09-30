//Candles by Odalys Sanchez
//Press mouse

PImage img1;
PImage img2;
PFont font1;
int [] pointX = new int [100];
int [] pointY = new int [100];

void setup(){
  size(1080,720);
  img2 = loadImage("flamefire.png");
  img1 = loadImage("sparkle.png");
  font1 = createFont("DancingScript.ttf", 100);
  textFont(font1);
  
  for (int i = 0; i < pointX.length; i++){
    pointX[i] = int (random(0, 1080));
    pointY[i] = int (random(0, 720));
  }
}

void draw(){
  println(mouseX, mouseY);
  
  background(255, 231, 178);
  
  if(mouseX >= 300 && mouseX <= 900){
  textSize(75);
  text("Press the mouse", 330, 100);
  }

  //Blue Candle  
  stroke(0);
  strokeWeight(1);
  fill(8, 21, 250);
  rect(175, 400, 250, 320);
  ellipse(300, 400, 250, 100);
  
  //White Candle
  fill(255);
  rect(675, 326, 250, 500);
  ellipse(800, 326, 250, 100);
  
    //Red candle 
  fill(255, 0, 0);
  rect(415, 251, 270, 500);
  ellipse(550, 251, 270, 100);
  
  //wick
  strokeWeight(3);
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  line(300,408, 300, 360);
     
}

void mousePressed(){
  
  background(2, 12, 77);
  
  frameRate(0.5);
  
  sparkle();
    
  //Blue Candle  
  stroke(0);
  strokeWeight(1);
  fill(8, 21, 250);
  rect(175, 400, 250, 320);
  ellipse(300, 400, 250, 100);
  
  //White Candle
  fill(255);
  rect(675, 326, 250, 500);
  ellipse(800, 326, 250, 100);
  
    //Red candle 
  fill(255, 0, 0);
  rect(415, 251, 270, 500);
  ellipse(550, 251, 270, 100);
  
  //flame on the blue candle
  fill(255, 255, 106);
  strokeWeight(3);  
  line(300,408, 300, 360);
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  noStroke();
  ellipse(300, 370, 80, 60);
  triangle(303, 285, 338, 360, 262, 360);
  
  //flame on the red candle
  fill(255, 255, 106); 
  strokeWeight(3);    
  line(545, 258, 545, 208);
  line(800, 343, 800, 293);
  line(300,408, 300, 360);
  noStroke();
  ellipse(545, 221, 80, 60);
  triangle(505, 218, 583, 218, 547, 152);
  
  //flame on the white candle
  fill(255, 255, 106);
  strokeWeight(3);    
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  line(300,408, 300, 360);
  noStroke();
  ellipse(800, 305, 80, 60);
  triangle(762, 297, 800, 240, 836, 297);
  
  image(img2, 0, 400);

}

void sparkle(){
  for(int i = 0; i < pointX.length; i++){
    image(img1, pointX[i], pointY[i], 50, 50);
  }
  
}
