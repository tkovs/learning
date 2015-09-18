int veiculo_verde = 8;
int veiculo_amarelo = 9;
int veiculo_vermelho = 10;
int INICIO = 8;
int FIM = 10;

void setup() {
  pinMode(veiculo_verde, OUTPUT);
  pinMode(veiculo_amarelo, OUTPUT);
  pinMode(veiculo_vermelho, OUTPUT);
}

void loop() {
  acende(veiculo_verde);
  delay(4000);

  apaga(veiculo_verde);
  acende(veiculo_amarelo);

  delay(1000);

  apaga(veiculo_amarelo);
  acende(veiculo_vermelho);

  delay(4000);

  apaga(veiculo_vermelho);
}

void acende(int ledPin) {
  digitalWrite(ledPin, 1);
}

void apaga(int ledPin) {
  digitalWrite(ledPin, 0);
}

void acende_geral() {
  int i;
  
  for (i = INICIO; i <= FIM; i++)
    acende(i);
}

void apaga_geral() {
  int i;
  
  for (i = INICIO; i <= FIM; i++)
    apaga(i);
}
