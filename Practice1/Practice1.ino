const int LED1 = 3;
const int ButtonPin = 2;
int buttonState = 0;

void setup() 
{
    pinMode(LED1, OUTPUT);
    pinMode(ButtonPin, INPUT);
}

void loop() 
{
    buttonState = digitalRead(ButtonPin);
  if(buttonState == HIGH)
    {
       digitalWrite(LED1, HIGH);
       delay(1000);
       digitalWrite(LED1, LOW);
       delay(200);
    }
    else{
        digitalWrite(LED1, LOW);
    }
}
