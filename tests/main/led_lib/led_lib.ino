#include "led.h"

LED led(2);

void setup() {
    Serial.begin(9600);
}

void loop() {
    led.blink(1000);
}

