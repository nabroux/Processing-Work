PImage img;
int smallPoint, largePoint;
int counter = 1;

void setup() {
  frameRate(1000);
  size(840, 560);
  img = loadImage("joker.jpg");
  smallPoint = 4;
  largePoint = 70;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 

  int num1 = int(random(smallPoint, largePoint));

  
  if (counter < 7000){
      
    int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    ellipse(x, y, num1, num1); 
    counter++;
  }else if (counter > 7010 && counter < 10000){
        int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    
    ellipse(x, y, 20, 20);
    counter++;
    
    
  }else if (counter > 10100 && counter < 15000){
        int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    
    ellipse(x, y, 15, 15);
    counter++;
    
    
  }else if (counter > 15100 && counter < 20000){
        int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    
    ellipse(x, y, 10, 10); 
    counter++;
    
    
  }else if (counter > 20100 && counter < 25000){
    
            int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    ellipse(x, y, 5, 5); 
    
    counter++;
    
    
  } else {

    counter++;
    
  }
}
