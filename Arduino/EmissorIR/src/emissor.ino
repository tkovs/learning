#include <IRremote.h>

IRsend irsend;

void setup() {
	Serial.begin(9600);
}

void loop() {
	char c = Serial.read();

	if (c == 'p') {
		irsend.sendNEC(0x80BFA15E, 32); // Desligar
	} else if (c == '1') {
		irsend.sendNEC(0x40408877, 32); // Aumentar volume
	} else if (c == '2') {
		irsend.sendNEC(0x404008F7, 32); // Diminuir volume
	}
}