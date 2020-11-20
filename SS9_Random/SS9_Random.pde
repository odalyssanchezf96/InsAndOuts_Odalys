///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
 Pair with Arduino demo sketch to control Piezo.
 
 Piezo frequency corresponds with mouseX position.
 Press mouse to send data over serial.
 
 Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

int val=0; //to send over Serial
int[] pointX= new int[10];
int[] pointY= new int[10];

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  textSize (44);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[5]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
 
  for (int i=0; i<10; i++) {
    pointX[i]= int(random(width));
    pointY[i]= int(random(height));
  }
}

void draw() {
  if (mousePressed) {
    //mouse location controls communication to Serial 
    val= int (map (mouseX, mouseY, width, 0, 255)); //remaps mouseY to 0-255  
    myPort.write(val); //write to Serial
    println(val);  //print to console

    //NOTE: SENDING VALUES 0-255 as Arduino receives byte-sized data over port
  }
  firstScene();
}

void firstScene(){
  text ("PRESS AND MOVE", width/2, height/2);
    
  if(mouseY > 0 && mouseY < 100){
    background(255);
   for (int i=0; i<pointX.length; i++) {
    ellipse(pointX[i], 200 + val, 75, 75);
  }
  }else if(mouseY > 100 && mouseY < 250){
    background(255, 100, 5);
   for (int i=0; i<pointY.length; i++) {
    ellipse(250 + val, pointY[i], 75, 75);
  }
  }else if(mouseY > 250 && mouseY < 500){
    background(0, 105, 50);
     for (int i=0; i<pointX.length; i++) {
    ellipse(pointX[i] + val, pointY[i] + val, 100, 100);
  }
  }
}
