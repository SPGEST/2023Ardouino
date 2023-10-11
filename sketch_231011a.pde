import processing.serial.*;
Serial p;
void setup(){
  p = new Serial(this,"COM5", 9600);
  size(400,400);
}
void draw(){
  if(p.available()>0){
    String m = p.readStringUntil('\n');
    if(m != null){
      float sensorValue = float(m);
      println(sensorValue);
      print(m);
      if( float(m) > 28.0) background(255,0,0);
      else background(0,255,0);
      textSize(32);
      text(sensorValue, 50, 200);
    }
  }
}
