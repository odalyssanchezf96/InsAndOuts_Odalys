int photocellPin = 0;     
int photocellReading;     
int RLEDpin1 = 13; // first RGB LED
int GLEDpin1 = 12;
int BLEDpin1 = 11; 
int RLEDpin2 = 10; //Second RGB LED
int GLEDpin2 = 9; 
int BLEDpin2 = 8; 
int RLEDpin3 = 7; //Third RGB LED
int GLEDpin3 = 6; 
int BLEDpin3 = 5;  
int RandomNum;
int photocellValue;

void setup() {
  // RGB LED LIGHTS
  pinMode(RLEDpin1, OUTPUT); //FIRST RGB
  pinMode(GLEDpin1, OUTPUT);
  pinMode(BLEDpin1, OUTPUT);
  pinMode(RLEDpin2, OUTPUT); //SECOND RGB
  pinMode(GLEDpin2, OUTPUT);
  pinMode(BLEDpin2, OUTPUT);
  pinMode(RLEDpin3, OUTPUT); //THIRD RGB
  pinMode(GLEDpin3, OUTPUT);
  pinMode(BLEDpin3, OUTPUT); 
  randomSeed(analogRead(0)); 

//photocell
  Serial.begin(9600);



}

void loop() {
  photocellReading = analogRead(photocellPin);
  photocellValue = map(photocellReading, 0, 1023, 0, 255);
  delay(100);  //keep this small delay in
  //Serial.println(photocellValue);
 Serial.write(photocellValue);
 RandomNum = random(0,255);


  if (photocellValue > 0 && photocellValue < 35){
  RGB_color(LOW, LOW, LOW);
  RGB_color2(LOW, LOW, LOW);
  RGB_color3(LOW, LOW, LOW);
  delay(10);
  } else if(photocellValue > 35 && photocellValue < 75){
  RGB_color2(RandomNum, RandomNum, RandomNum);
  delay(10);
  } else if(photocellValue > 100 && photocellValue < 115){
  RGB_color3(RandomNum, RandomNum, RandomNum);  
  delay(10);  
  } else if(photocellValue > 115 && photocellValue < 135){
  RGB_color(RandomNum, RandomNum, RandomNum);  
  delay(10);  
  } else if(photocellValue > 135 && photocellValue < 165){
  RGB_color2(RandomNum, RandomNum, RandomNum);  
  delay(10);  
  } else if(photocellValue > 165 && photocellValue < 195){
  RGB_color3(RandomNum, RandomNum, RandomNum);  
  delay(10);
  } else if(photocellValue > 195 && photocellValue < 210){
  RGB_color(RandomNum, RandomNum, RandomNum);  
  delay(10);  
  }  else if(photocellValue > 210 && photocellValue < 230){
  RGB_color2(RandomNum, RandomNum, RandomNum);  
  delay(10);  
  } else if(photocellValue > 230 && photocellValue < 255){
  RGB_color3(RandomNum, RandomNum, RandomNum);  
  delay(10);
  } 
}


void RGB_color(int red_value, int green_value, int blue_value)
 {
  analogWrite(RLEDpin1, red_value);
  analogWrite(GLEDpin1, green_value);
  analogWrite(BLEDpin1, blue_value);   
}

void RGB_color2(int red_value2, int green_value2, int blue_value2)
 { 
  analogWrite(RLEDpin2, red_value2);
  analogWrite(GLEDpin2, green_value2);
  analogWrite(BLEDpin2, blue_value2); 
}

void RGB_color3(int red_value3, int green_value3, int blue_value3)
 {
  analogWrite(RLEDpin3, red_value3);
  analogWrite(GLEDpin3, green_value3);
  analogWrite(BLEDpin3, blue_value3);  
}
