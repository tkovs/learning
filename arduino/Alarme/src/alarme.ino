int pinoBuzzer = 13;

void setup() {
  pinMode(pinoBuzzer, OUTPUT);
}

void loop() {
  tone(pinoBuzzer, 880);
  delay(300);
  noTone(pinoBuzzer);
  delay(300);
}