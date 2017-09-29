import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
float sensorValueX, sensorValueY;
int start;
float[] xPosHist = new float[2];
float[] yPosHist = new float[2];
void setup(){
  size(600, 600);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  arduino.pinMode(2, Arduino.INPUT);
  background(255);
}
void draw(){
  if(key == ' '){
    key = 'n';
    background(255);
  }
  if(arduino.digitalRead(2) == 1){
    background(255);
  }
  sensorValueX = map(arduino.analogRead(1), 0, 1023, 0, width);
  sensorValueY = map(arduino.analogRead(0), 0, 1023, 0, height);
  //ellipse(sensorValueX, yPos, 5, 5);
  //append(xPosHist, sensorValueX);
  line(xPosHist[0], yPosHist[0], sensorValueX, sensorValueY);
  xPosHist[0] = sensorValueX;
  yPosHist[0] = sensorValueY;
  println(arduino.analogRead(1));
  if(start != 1){
    background(255);
    start = 1;
  println(arduino.digitalRead(2));
  }
}