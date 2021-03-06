//Candles by Odalys Sanchez
//Move the mouse over the candles

PImage img2;
PFont font1;
float speed = 0.5;
float x;

void setup(){
  size(1080,720);
  //background(255, 203, 203);
  img2 = loadImage("flamefire.png");
  
    font1 = createFont("DancingScript.ttf", 100);
  textFont(font1);
}

void draw(){
  println(mouseX, mouseY);
  
  background(255, 203, 203);
  
  textSize(100);
  text("Pick a candle!", 100, 100);
  
  for (int i = 0; i < height; i += 100){
    if( x > width/2 && x > height/2){
      stroke(165, 150, 100, 50);
      line(x + speed, i, width , height);
    }else {
      x -= speed;
      stroke(165, 150, 100, 50);
      line(x - speed, i, width , height);
    }
  }  
  for (int i = 0; i < height ; i += 100){
    if(x < width/2 && x < height/2){
    stroke(165, 150, 100, 50);
    line(0, height, i, x + speed);
    }else {
     x += speed;
    stroke(165, 150, 100, 50);
    line(0, height, i, x - speed);  
    }
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
  


  
  if (mouseX > 200 && mouseX< 330){
  //flame on the blue candle
  fill(255, 255, 106);
  strokeWeight(3);  
  line(300,408, 300, 360);
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  noStroke();
  ellipse(300, 370, 80, 60);
  triangle(303, 285, 338, 360, 262, 360);
  
  }else if (mouseX > 500 && mouseX < 580){
  //flame on the red candle
  fill(255, 255, 106); 
  strokeWeight(3);    
  line(545, 258, 545, 208);
  line(800, 343, 800, 293);
  line(300,408, 300, 360);
  noStroke();
  ellipse(545, 221, 80, 60);
  triangle(505, 218, 583, 218, 547, 152);
  
  } else if(mouseX > 760 && mouseX < 828){
  //flame on the white candle
  fill(255, 255, 106);
  strokeWeight(3);    
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  line(300,408, 300, 360);
  noStroke();
  ellipse(800, 305, 80, 60);
  triangle(762, 297, 800, 240, 836, 297);
  
  } else{
  strokeWeight(3);
  line(800, 343, 800, 293);
  line(545, 258, 545, 208);
  line(300,408, 300, 360);
  }
  
   image(img2, 0, 360);
   
    
}
