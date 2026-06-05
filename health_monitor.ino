#define PULSE_OUT 4

void setup()
{
  pinMode(PULSE_OUT, OUTPUT);
}

void loop()
{
  digitalWrite(PULSE_OUT, HIGH);
  delay(200);

  digitalWrite(PULSE_OUT, LOW);
  delay(200);
}