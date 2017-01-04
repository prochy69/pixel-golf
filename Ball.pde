class Ball{
  
  int size;
  float alt;
  float speed;
  PVector dir;
  int scopeX, scopeY;
  
  
  Ball(){
    this.alt = 1;
    this.speed = 0;
    this.dir = new PVector();
  }
  
  void render(){
    //logic & movement
    playerX += this.speed*this.dir.x;
    playerY += this.speed*this.dir.y;
    println("Speed: "+this.speed);
    this.speed *= 0.9;
    //graphics
    stroke(0);
    strokeWeight(1);
    fill(255);
    ellipseMode(CENTER);
    ellipse(
      SCREEN_WIDTH/2,
      SCREEN_HEIGHT/2,
      BALL_SIZE*this.alt,
      BALL_SIZE*this.alt
    );
  }
  
  
  //when in state 1 (aim) and left click, create a vector of the ball aim
  void setVector(){
    this.dir.set(mouseX-SCREEN_WIDTH/2, mouseY-SCREEN_HEIGHT/2, 0);
    //this.dir = new PVector(mouseX-SCREEN_WIDTH/2, mouseY-SCREEN_HEIGHT/2);
    this.dir.normalize();
    println("Vector set: "+this.dir);
  }
  
  
  //when in state 2 (power) and left click, make the ball move with constant power (yet)
  void hit(int tempPower){
    this.speed = tempPower;
  }
  
}