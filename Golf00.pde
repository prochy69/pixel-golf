final int SCREEN_WIDTH = 800;
final int SCREEN_HEIGHT = 600;

Ball ball = new Ball();

void setup(){
  size(800,600);
  background(0,169,0);
}

void draw(){
  ball.render();
}