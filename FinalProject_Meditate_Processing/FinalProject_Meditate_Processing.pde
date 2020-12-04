import processing.serial.*; //imports Serial library from Processing
import processing.sound.*;

Serial myPort; // creates object from Serial class
int val=0;
SoundFile file;
SinOsc sine;
//Delay delay;

void setup() {
  size(1080, 720);
  background(255);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[5]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  file = new SoundFile(this, "Calm.wav");
  sine = new SinOsc(this);
  sine.play()
  //in = new AudioIn(this, 0);  
  //delay = new Delay(this);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if(val > 0 && val < 75){
    fill(255, 150, 0);
    file.play();
  } else if (val > 75 && val < 150){
    fill(255);
    file.stop();
  }
    // Create the sine oscillator
   
  //in.play(); 
  sine.play(1.0, 144);
  //delay.time(0.5);
}
