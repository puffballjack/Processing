import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
float sensorValueX, sensorValueY;
int xPos, yPos = height/2;
float[] xPosHist = new float[2];
float[] yPosHist = new float[2];
void setup(){
  size(600, 600);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  arduino.pinMode(2, Arduino.INPUT);
  background(255);
}
void draw(){
  if(key == 'r'){
    key = ' ';
    background(255);
  }
  sensorValueX = map(arduino.analogRead(0), 950, 1023, 0, width);
  sensorValueY = map(arduino.analogRead(1), 950, 1023, 0, height);
  //ellipse(sensorValueX, yPos, 5, 5);
  //append(xPosHist, sensorValueX);
  line(xPosHist[0], yPosHist[0], sensorValueX, sensorValueY);
  xPosHist[0] = sensorValueX;
  yPosHist[0] = sensorValueY;
  println(arduino.analogRead(1));
  if(xPos > width){
    xPos = 0;
    background(0);
  println(xPosHist[0]);
  }
}