const int analogPino = A0;
const int PINOS = 6;
const int pinosLeds[PINOS] = {13, 12, 11, 10, 9, 8};
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

}
 
void loop() {
  valorSensor = analogRead(analogPino);
  indice = map(valorSensor, 0, 1023, -1, 5);

  volume(indice);
  delay(30);
}
 
void apagatudo() {
  for (int i = 0; i < PINOS; i++)
    analogWrite(pinosLeds[i], 0);
}


void volume(int limite) {
  int indice = 0;

  if (limite < 0){
    apagatudo();
  } else {
    while (indice <= limite) {
      analogWrite(pinosLeds[indice++], brilho);
    }

    while (indice < PINOS) {
      analogWrite(pinosLeds[indice++], 0);
    }
  }
}