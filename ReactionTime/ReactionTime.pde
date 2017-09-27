import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
String[] rightButton = new String[10];
String[] leftButton = new String[10];
float m = millis();
float rS, lS, rE, lE;
int i = 0;
color rCol = color(255, 0, 0);
void setup(){
  background(255);
  size(600, 600);
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  arduino.pinMode(4, Arduino.INPUT);
  arduino.pinMode(19, Arduino.INPUT);
  arduino.pinMode(13, Arduino.OUTPUT);
}

void draw(){
  /**fill(0);
  rect(0, 0, 50, 15);
  fill(255);
  text(str(millis()), 10, 10);
  noStroke();
  fill(rCol);
  rect(width/2, height/2, 10, 10);
  //println(rE);**/
  while(i<9){
    arduino.digitalWrite(13, Arduino.HIGH);
    rS = millis();
    if(arduino.digitalRead(19) == 1){
      rE = millis();
      arduino.digitalWrite(13, Arduino.LOW);
      i++;
      delay(1000);
    }
     rightButton[i] = str(rE - rS);
  }
}
void keyPressed()
{
  if(key == 's'){
    saveStrings("values.txt", rightButton);
    key = ' ';
  }
}