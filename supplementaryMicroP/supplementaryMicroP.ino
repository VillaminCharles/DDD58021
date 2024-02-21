const int LED1 = 3;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 9;
const int LED6 = 8;
const int LED7 = 7;
const int LED8 = 6;
const int LED9 = 5;
const int LED10 = 4;

const int ButtonPin = 2;
int buttonState = 0;

void setup()
{
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  pinMode(LED8, OUTPUT);
  pinMode(LED9, OUTPUT);
  pinMode(LED10, OUTPUT);
  
  pinMode(ButtonPin, INPUT);
}

void loop()
{
  buttonState = digitalRead(ButtonPin);
  if (buttonState == HIGH)
  {

    digitalWrite(LED1, HIGH);
    delay(100);
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, HIGH);
    delay(100);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, HIGH);
    delay(100);
    digitalWrite(LED4, LOW);
    digitalWrite(LED5, HIGH);
    delay(100);
    digitalWrite(LED5, LOW);
    digitalWrite(LED6, HIGH);
    delay(100);
    digitalWrite(LED6, LOW);
    digitalWrite(LED7, HIGH);
    delay(100);
    digitalWrite(LED7, LOW);
    digitalWrite(LED8, HIGH);
    delay(100);
    digitalWrite(LED8, LOW);
    digitalWrite(LED9, HIGH);
    delay(100);
    digitalWrite(LED9, LOW);
    digitalWrite(LED10, HIGH);
    delay(100);
    digitalWrite(LED10, LOW);
  }
  else
  {

    digitalWrite(LED10, HIGH);
    delay(100);
    digitalWrite(LED10, LOW);
    digitalWrite(LED9, HIGH);
    delay(100);
    digitalWrite(LED9, LOW);
    digitalWrite(LED8, HIGH);
    delay(100);
    digitalWrite(LED8, LOW);
    digitalWrite(LED7, HIGH);
    delay(100);
    digitalWrite(LED7, LOW);
    digitalWrite(LED6, HIGH);
    delay(100);
    digitalWrite(LED6, LOW);
    digitalWrite(LED5, HIGH);
    delay(100);
    digitalWrite(LED5, LOW);
    digitalWrite(LED4, HIGH);
    delay(100);
    digitalWrite(LED4, LOW);
    digitalWrite(LED3, HIGH);
    delay(100);
    digitalWrite(LED3, LOW);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    digitalWrite(LED1, HIGH);
    delay(100);
    digitalWrite(LED1, LOW);
  }
}
