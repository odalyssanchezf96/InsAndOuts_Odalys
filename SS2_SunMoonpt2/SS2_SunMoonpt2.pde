// Sun & Moon by Odalys Sanchez
//Move the mouse left, middle or right
//When you're on the left side Press the mouse
//When you're on the right side press any key

int right = 400;
int left = 800;
float r;
float g;
float b;



void setup(){
size(1080, 720);
//background(255, 248, 237);
frameRate(1);
}

void draw(){
  strokeWeight(4);
  
  if(mouseX < right){
    fill(146, 214, 245);
    noStroke();
    rect(0, 0, 1080, 1080);
    
    //SUN
    stroke(252, 224, 0); 
    fill(252, 224, 0);
    ellipse(310, 230, 250, 250);
    line(370, 40, 290, 106); //Top Right Corner
    line(370, 40, 390, 132);
    line(490, 140, 390, 132);
    line(490, 140, 435, 230);
    line(480, 330, 435, 230);
    line(480, 330, 385, 330);
    line(355, 415, 385, 330);
    line(355, 415, 300, 355);
    line(235, 410, 300, 355);
    line(235, 410, 222, 320);
    line(140, 330, 222, 320);
    line(140, 330, 185, 250);
    line(110, 190, 185, 250);
    line(110, 190, 200, 170);
    line(200, 60, 200, 170);
    line(200, 60, 290, 106); //Top Left Corner
    
} else if(mouseX > left){
    fill(18, 23, 67);
    rect(0, 0, 1080, 1080);
    
    //Moon
    fill(124, 124, 124);
    stroke(173, 174, 175);
    ellipse(770, 510, 300, 300);
  
} else{
  r = random(255);
  g = random(255);
  b = random(255);
  frameRate(1);
  fill(r, g, b);
  rect(0, 0, 1080, 1080);
  println("MOVE THE MOUSE LEFT OR RIGHT!");
  
}
}

void keyPressed(){
  //clouds
  fill(255);
  noStroke();

  ellipse(230, 620, 200, 100);
  ellipse(370, 620, 200, 100);
  ellipse(300, 580, 200, 100);
  
  ellipse(640, 200, 200, 100);
  ellipse(770, 200, 200, 100);
  ellipse(700, 160, 200, 100);
  
  ellipse(740, 520, 200, 100);
  ellipse(870, 520, 200, 100);
  ellipse(800, 480, 200, 100);

}

void mousePressed(){
  //Stars
  fill(255);
  line(125, 40, 135, 60);
  line(135, 40, 125, 60);
  line(120, 50, 140, 50);
  
  line(115, 300, 125, 320);
  line(125, 300, 115, 320);
  line(110, 310, 130, 310);
  
  line(500, 100, 510, 120);
  line(510, 100, 500, 120);
  line(495, 110, 515, 110);
  
  line(200, 600, 210, 620);
  line(210, 600, 200, 620);
  line(195, 610, 215, 610);
  
  line(815, 240, 825, 260);
  line(825, 240, 815, 260);
  line(810, 250, 830, 250);
  
  line(450, 350, 460, 370);
  line(460, 350, 450, 370);
  line(445, 360, 465, 360);
  
  
  fill(255,30);
  noStroke();
  ellipse(670, 520, 55, 60);
  ellipse(790, 610, 60, 40);
  ellipse(750, 420, 60, 55);
  ellipse(875, 490, 40, 70);
  ellipse(770, 520, 55, 70);
  
}
