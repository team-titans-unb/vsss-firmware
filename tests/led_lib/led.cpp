#include <Arduino.h>
#include "led.h"

LED::LED(int pin) {
    this->pin = pin;
    pinMode(pin, OUTPUT);
}

void LED::turnOn() {
    digitalWrite(this->pin, HIGH);
}

void LED::turnOff() {
    digitalWrite(this->pin, LOW);
}

void LED::blink(int duration) {
    turnOn();
    delay(duration);
    turnOff();
}