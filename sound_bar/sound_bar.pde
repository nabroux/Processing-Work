import ddf.minim.*;

AudioPlayer player;
Minim minim;

void setup(){
  size(512, 400);
  smooth();
  minim=new Minim(this);
  player=minim.loadFile("lover boy.mp3",1024);
  player.play();
}

void draw(){
  background(0);
  stroke(255);
  
  for(int i=0; i<player.bufferSize()-1; i+=5){
    strokeWeight(abs(player.left.get(i)*20));
    ellipse(i, 150+player.left.get(i)*100, player.left.get(i)*6, 150+player.left.get(i)*100);
    ellipse(i, 250+player.left.get(i)*100, player.right.get(i)*6, 150+player.right.get(i)*100);
  }
}
