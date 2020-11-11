
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(1080, 720);
  background(255);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[5]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if(val> 0 && val < 10){
    background(255);
  }
  
  firstScene();
  secondScene();
  thirdScene();

}

void firstScene(){
  if (val > 10 && val < 50){
    background(255);
    
  //Blue Candle      
  stroke(0);
  strokeWeight(1);
  fill(8, 21, 250);
  rect(175, 400, 250, 320);
  ellipse(300, 400, 250, 100);
  line(300,408, 300, 360);
  
  } else if(val > 90 && val < 105){
  background(255);
    
  //Blue Candle      
  stroke(0);
  strokeWeight(1);
  fill(8, 21, 250);
  rect(175, 400, 250, 320);
  ellipse(300, 400, 250, 100);
  line(300,408, 300, 360);
  
  //flame on the blue candle
  fill(255, 255, 106);
  noStroke();
  ellipse(300, 370, 80, 60);
  triangle(303, 285, 338, 360, 262, 360);  
  
  }
}

void secondScene(){
  if (val > 105 && val < 145){
    background(203, 255, 185);
    
    //Red candle 
  stroke(0);
  strokeWeight(1); 
  fill(255, 0, 0);
  rect(415, 251, 270, 500);
  ellipse(550, 251, 270, 100);  
  line(545, 258, 545, 208);
  }else if(val > 181 && val < 200){
   background(203, 255, 185);
    
  //Red candle 
  stroke(0);
  strokeWeight(1);    
  fill(255, 0, 0);
  rect(415, 251, 270, 500);
  ellipse(550, 251, 270, 100);  
  line(545, 258, 545, 208);    
    
  //flame on the red candle
  fill(255, 255, 106); 
  noStroke();
  ellipse(545, 221, 80, 60);
  triangle(505, 218, 583, 218, 547, 152);    
  }
}

void thirdScene(){
  if (val > 200 && val < 230){
  background(255, 139, 141);
    
  //White Candle
  stroke(0);
  strokeWeight(1);  
  fill(255);
  rect(675, 326, 250, 500);
  ellipse(800, 326, 250, 100);
  line(800, 343, 800, 293);  
  } else if (val > 251 && val < 257){
    background(255, 139, 141);
    
  //White Candle
  stroke(0);
  strokeWeight(1);  
  fill(255);
  rect(675, 326, 250, 500);
  ellipse(800, 326, 250, 100);
  line(800, 343, 800, 293); 
  
  //flame on the white candle
  fill(255, 255, 106);
  noStroke();
  ellipse(800, 305, 80, 60);
  triangle(762, 297, 800, 240, 836, 297);  
}
}
