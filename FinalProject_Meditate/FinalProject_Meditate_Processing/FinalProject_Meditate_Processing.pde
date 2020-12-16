//Meditate by Odalys Sanchez

import processing.serial.*; //imports Serial library from Processing
import processing.sound.*;

Serial myPort; // creates object from Serial class
int val=0;
SoundFile file;
AudioIn in;
SinOsc sine;

void setup() {
  size(1080, 720);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[5]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  file = new SoundFile(this, "calm.wav");
  in = new AudioIn(this, 0);  
  sine = new SinOsc(this);
  sine.play();
  
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  println(val);
  background(170, 52, 52);
  float frequency = map(val, 0, width, 250.0, 439.0);
  sine.freq(frequency);
  
  if(val > 0 && val < 35){
    sine.pan(-1.0);
  } else if (val > 35 && val < 75){
    sine.pan(-8.0);
  } else if (val > 75 && val < 100){ 
    sine.pan(-6.0);
  } else if (val > 100 && val < 115){
    sine.pan(-4.0);
  } else if (val > 115 && val < 135){
    sine.pan(-2.0);  
  } else if (val > 135 && val < 165){
    sine.pan(0.0);
  } else if (val > 165 && val < 195){
    sine.pan(2.0);
  } else if (val > 195 && val < 210){ 
    sine.pan(4.0);  
  } else if (val > 210 && val < 230){  
    sine.pan(7.0);    
  } else if (val > 230 && val < 255){  
    sine.pan(1.0); 
  }
  
  if (keyPressed == true){
  if(val > 0 && val < 150){
    file.stop();
    sine.play();
    } else if (val > 150 && val < 255){
    if (!file.isPlaying()){
    file.play();
    file.pan(map(mouseX, 0, width, -1.0, 1.0));
    sine.stop();    
    }
  }
  }
  
if (mousePressed == true){ 
    float frequency1 = map(val, 0, width, 150.0, 250.0);
    sine.freq(frequency1);
    sine.pan(map(val, 0, width, -1.0, 1.0));
}
}
