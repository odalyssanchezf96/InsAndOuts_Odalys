//////////////////////////////////////////////////////////////////////////////////////////
/*
   Pair with Processing piezo sketch, to control piezo with Processing interface.
   For more info on piezos, see: 
   https://create.arduino.cc/projecthub/SURYATEJA/use-a-buzzer-module-piezo-speaker-using-arduino-uno-89df45
   and
   https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v32/experiment-11-using-a-piezo-buzzer
   For tone(): https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/ 
*/
//////////////////////////////////////////////////////////////////////////////////////////

const int BUZZER = 5; //buzzer to arduino pin 5
int val = 0; //tracks incoming value from Serial port  
int frequency=0; //tracks value to send to piezo
const int LED = 4;
const int LED1 = 6;
const int LED2 = 3;
const int LED3 = 7;

void setup() {
  pinMode(BUZZER, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
  pinMode(LED, OUTPUT); 
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT); 
  pinMode(LED3, OUTPUT); 
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (10);
    
  }
//    frequency = map (val, 0, 255, 100, 1500);
//    tone (BUZZER, frequency, 10);  // send frequency at 10 millis duration
//    delay (1);   

  if (val > 50 && val < 100){
     tone(BUZZER, 261 + val); // play the tone in each array position
     delay(500); 
     analogWrite(LED, HIGH);
  }else if ( val > 100 && val < 150){
    tone(BUZZER, 294 + val); // play the tone in each array position
    analogWrite(LED1, HIGH);
    delay(500); 
  }else if ( val > 150 && val < 200){
    tone(BUZZER, 329 + HIGH); // play the tone in each array position
    delay(500); 
    analogWrite(LED2, val);
   } else if ( val > 200 && val < 257){
    tone(BUZZER, 349 + val); // play the tone in each array position
    delay(500); 
    analogWrite(LED3, HIGH);
  }else{
     noTone(BUZZER);
    analogWrite(LED, LOW);
    analogWrite(LED1, LOW);
    analogWrite(LED2, LOW);
    analogWrite(LED3, LOW);                 
   }

}
