import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


import processing.video.*;

Capture cam;
PImage img;
int smallPoint, largePoint;
AudioInput in;

void setup() {
  size(displayWidth, displayHeight);
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  }else{
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    cam = new Capture(this, 1280, 720, 10);
    cam.start();
  }
  
  smallPoint = 2;
  largePoint = 50;
  noStroke();
  
}

void draw() {
    if (cam.available() == true) {
      cam.read();
    }
    for(int i=1;i<=5000;i++){
      int num1 = int(random(smallPoint, largePoint));
      int x = int(random(cam.width));
      int y = int(random(cam.height));
      color pix = cam.get(x, y);
      float red = red(pix);
      float green = green(pix);
      float blue = blue(pix);
      
      fill(red+random(-150,150), green+random(-50,50), blue+random(-50,50), 128);
      ellipse(x*displayWidth/1280, y*displayHeight/720, num1, num1); 
    }
}
