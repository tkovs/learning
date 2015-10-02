int pinoLed = 3;
int pinoBotao = 2;

int leituraBotao = 0;

void setup() {
	pinMode(pinoLed, OUTPUT);	
	pinMode(pinoBotao, INPUT);
}

void loop() {
	leituraBotao = digitalRead(pinoBotao);

	if (leituraBotao == 0) {
		digitalWrite(pinoLed, HIGH);
	} else {
		digitalWrite(pinoLed, LOW);
	}
}