const int analogPino = A0;
const int pinosLeds[6] = {13,12,11,10,9,8};
const int brilho = 500;
 
int valorSensor = 0;
int indice = 0;
 
/* Potenciômetro
     GND  A0  5V
      |   |   |
0000 (=========) 1023
         [=]
         [=]
         [=]
         [=]
*/
 
void setup() {
  Serial.begin(9600);
}
 
void loop() {
  valorSensor = analogRead(analogPino);
  indice = map(valorSensor, 0, 1023, 0, 5);
 
  apagatudo();
  analogWrite(pinosLeds[indice], brilho);
 
  delay(50);
}
 
void apagatudo() {
  int i = 0;
 
  while (i <= 5) analogWrite(pinosLeds[i++], 0);
}