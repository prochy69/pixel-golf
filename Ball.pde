class Ball{
  
  int size;
  
  
  Ball(){
    
  }
  
  void render(){
    //graphics
    stroke(0);
    fill(255);
    ellipseMode(CENTER);
    ellipse(SCREEN_WIDTH/2,SCREEN_HEIGHT/2,25,25);
  }
  
}