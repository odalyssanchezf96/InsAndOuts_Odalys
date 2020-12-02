int val;
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
int PhotocellValue;

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
  photocellReading = analogRead(photocellPin);  
  Serial.print("Analog reading = ");
  Serial.println(photocellReading); 
  //photocellReading = 1023 - photocellReading;
  PhotocellValue = map(photocellReading, 0, 1023, 0, 255);

}

void loop() {
  val = analogRead(photocellPin); //read sensor and assign to variable called val
  val = val / 4;
  Serial.write(val);
  RandomNum = random(0,255);

  if(PhotocellValue > 0 && PhotocellValue < 75){
  RGB_color(RandomNum, RandomNum, RandomNum);
  delay(1000);
  } else if(PhotocellValue > 75 && PhotocellValue < 150){
  RGB_color2(RandomNum, RandomNum, RandomNum);
  delay(1000);
  } else if(PhotocellValue > 150 && PhotocellValue < 255){
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
