//CONTROLS HANDLING
  //KEYBOARD
  void keyPressed()
  {
    if (key == CODED){
      if (keyCode == LEFT){
        left=true;
      }
      else if (keyCode == RIGHT){
        right=true;
      }
      else if (keyCode == UP){
        up=true;
      }
      else if (keyCode == DOWN){
        down=true;
      }
    }
  }
  void keyReleased()
  {
    if (key == CODED){
      if (keyCode == LEFT){
        left=false;
      }
      else if (keyCode == RIGHT){
        right=false;
      }
      else if (keyCode == UP){
        up=false;
      }
      else if (keyCode == DOWN){
        down=false;
      }
    }
  }
  
  
  
  
  
  //MOUSE
  void mousePressed(){
    if (mouseButton == LEFT) {
      lmb=true;
      leftClick();
    } else if (mouseButton == RIGHT) {
      rmb=true;
      rightClick();
    } else {
      mmb=true;
    }
  }
  void mouseReleased(){
    if (mouseButton == LEFT) {
      lmb=false;
    } else if (mouseButton == RIGHT) {
      rmb=false;
    } else {
      mmb=false;
    }
  }
  
  //LEFT CLICK to AIM
void leftClick(){
if(shotState<3){
  if(shotState==1){
    ball.setVector();
  }else if(shotState==2){
    ball.hit();
  }
  shotState++;
  println(shotState);
}
}

//RIGHT CLICK to CANCEL AIM
void rightClick(){
if(shotState==1||shotState==2){
  shotState--;
  println(shotState);
}
}