#include <IRremote.h>

/*
 Receptor IR + Controle de receptor AzAmérica (depois vejo o modelo)
  ___
 | 0 |
 -----
 | | |   # A = 1
 | | |   # B = GND
 | | |   # C = 5V
 A B C
*/

#define PINO_LED 13
#define PINO_RECEPTOR 12

float valor_lido;
int status;

IRrecv irrecv(PINO_RECEPTOR);
decode_results resultado;

void setup() {
  pinMode(PINO_LED, OUTPUT);
  Serial.begin(9600);
  irrecv.enableIRIn();
  status = 0;
}

void loop() {
  if (irrecv.decode(&resultado)) {
    valor_lido = resultado.value;

    Serial.print("Valor lido: ");
    Serial.println(resultado.value);
    
    if (valor_lido == 1077956783) { // Power do meu controle AzAmérica
      if (status == 0) {
        digitalWrite(PINO_LED, HIGH);
        status = 1;
      } else {
        digitalWrite(PINO_LED, LOW);
        status = 0;
      }
    }

    irrecv.resume();
  }
}