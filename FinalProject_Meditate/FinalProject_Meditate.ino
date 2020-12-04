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
 // randomSeed(analogRead(0)); 

//photocell
  Serial.begin(9600);



}

void loop() {
  photocellReading = analogRead(photocellPin);  
  photocellValue = map(photocellReading, 0, 1023, 0, 255);
  Serial.println(photocellValue);
  Serial.write(photocellValue);
  RandomNum = random(0,255);

  if(photocellValue > 0 && photocellValue < 75){
  RGB_color(RandomNum, RandomNum, RandomNum);
  delay(1000);
  } else if(photocellValue > 75 && photocellValue < 150){
  RGB_color2(RandomNum, RandomNum, RandomNum);
  delay(1000);
  } else if(photocellValue > 150 && photocellValue < 255){
  RGB_color3(RandomNum, RandomNum, RandomNum);  
  delay(1000);  
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
