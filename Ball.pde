class Ball{
  
  int size;
  float alt;
  float speed;
  PVector dir;
  
  
  Ball(){
    this.alt = 1;
    this.speed = 0;
  }
  
  void render(){
    //graphics
    stroke(0);
    fill(255);
    ellipseMode(CENTER);
    ellipse(
      SCREEN_WIDTH/2,
      SCREEN_HEIGHT/2,
      BALL_SIZE*this.alt,
      BALL_SIZE*this.alt
    );
  }
  
}