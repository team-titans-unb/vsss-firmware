#ifndef LED_H
#define LED_H

class LED {
    private:
        int pin;
    public:
    
    LED(int pin);
    void turnOn();
    void turnOff();
    void blink(int duration);

};

#endif