import ddf.minim.*;

AudioPlayer player;
Minim minim;

void setup(){
  size(512, 400);
  minim=new Minim(this);
  player=minim.loadFile("want her.mp3",1024);
  player.play();
}

void draw(){
  background(0);
  stroke(255);
  
  for(int i=0; i<player.left.size()-1; i++){
    strokeWeight(abs(player.left.get(i)*20));
    line(i, 150+player.left.get(i)*50, i+1, 150+player.left.get(i+1)*50);
    line(i, 250+player.right.get(i)*50, i+1, 250+player.right.get(i+1)*50);
  }
}
