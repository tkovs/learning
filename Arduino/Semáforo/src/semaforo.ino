int veiculo_verde = 8;
int veiculo_amarelo = 9;
int veiculo_vermelho = 10;
int pedestre_verde = 11;
int pedestre_vermelho = 12;

int INICIO = 8;
int FIM = 12;

void setup() {
  pinMode(veiculo_verde, OUTPUT);
  pinMode(veiculo_amarelo, OUTPUT);
  pinMode(veiculo_vermelho, OUTPUT);
  pinMode(pedestre_verde, OUTPUT);
  pinMode(pedestre_vermelho, OUTPUT);
}

void loop() {
  acende(veiculo_verde);
  acende(pedestre_vermelho);

  delay(4000);

  apaga(veiculo_verde);
  acende(veiculo_amarelo);

  delay(2000);

  apaga(veiculo_amarelo);
  acende(veiculo_vermelho);
  
  acende(pedestre_verde);
  apaga(pedestre_vermelho);

  delay(4000);

  apaga(veiculo_vermelho);
  apaga(pedestre_verde);
}

void acende(int ledPin) {
  digitalWrite(ledPin, HIGH);
}

void apaga(int ledPin) {
  digitalWrite(ledPin, LOW);
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
