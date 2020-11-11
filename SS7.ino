// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 


const int LED = 11;
const int SENSOR = A0; //sensor hooked up to analog pin A0
int val = 0;
const int potPin = A0;  //potentiometer middle pin
int reading = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
  pinMode(LED, OUTPUT);
}

void loop() {
  val = analogRead(SENSOR); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds

  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////


  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing

  if(val > 200 && val < 257){
    digitalWrite(LED, HIGH);
    delay(10);
  } else{
    digitalWrite(LED, LOW);
  }
  
  
}
