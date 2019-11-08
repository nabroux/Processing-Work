import ddf.minim.*;
AudioPlayer player;

//AudioInput player;
Minim minim;

void setup() {
  size(1524, 600);
  smooth();
  minim=new Minim(this);
  player=minim.loadFile("someshit who.mp3", 2048);
  // player=minim.getLineIn(Minim.STEREO, 1024);
  colorMode(HSB, 255, 255, 255);
  println(player.bufferSize());
}

void draw() {
  background(0);
  for (int i=0; i<player.bufferSize()-1; i++) {
    stroke(i/4.7, 255, 255);
    strokeWeight(abs(player.left.get(i)*20));
    line(i, 200+player.left.get(i)*50, i+1, 200+player.left.get(i+1)*50);
    line(i, 400+player.right.get(i)*50, i+1, 400+player.right.get(i+1)*50);
  }
}

void mousePressed() {
  player.play();
}
