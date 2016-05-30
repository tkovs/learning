/*
Display de 7 segmentos (anodo comum)
Pinos:

  11 09 VCC 10 13
  |  |  |   |  |
  --------------
  |   10..10   |
  | 09      13 |
  | 09      13 |
  | 09      13 |
  |   11..11   |
  | 07      12 |
  | 07      12 |
  | 07      12 |
  |   08..08   |
  |         __ |
  --------------
  |  |  |   |  |
  07 08 VCC 12 _
*/

#define BRILHO(A) A==1?LOW:HIGH

const int pinos[7] = {13, 12, 11, 10, 9, 8, 7};
const int numeros[10][7] = {{1, 1, 0, 1, 1, 1, 1},
                            {1, 1, 0, 0, 0, 0, 0},
                            {1, 0, 1, 1, 0, 1, 1},
                            {1, 1, 1, 1, 0, 1, 0},
                            {1, 1, 1, 0, 1, 0, 0},
                            {0, 1, 1, 1, 1, 1, 0},
                            {0, 1, 1, 1, 1, 1, 1},
                            {1, 1, 0, 1, 0, 0, 0},
                            {1, 1, 1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1, 0, 0}};

void setup() {
    int i;

    for (i = 0; i < 7; i++) {
        pinMode(pinos[i], OUTPUT);
        pinMode(5, OUTPUT);
    }

    digitalWrite(5, HIGH);
}

void loop() {
    int i;

    for (i = 0; i <= 9; i++) {
        acende(i);
        delay(500);
    }

    apaga();
    delay(2000);
}

void acende(int numero) {
    int i;

    for (i = 0; i < 7; i++) {
        digitalWrite(pinos[i], BRILHO(numeros[numero][i]));
    }
}

void apaga() {
    int i;

    for (i = 0; i < 7; i++) {
        digitalWrite(pinos[i], HIGH);
    }
}