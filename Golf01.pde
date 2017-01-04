////////////////////////////
/*GOLF v01*/
/*Ball and tiles + generation*/
/*Ball movement using arrow keys*/
////////////////////////////
//CONSTANTS DECLARATION
final int SCREEN_WIDTH = 1250;
final int SCREEN_HEIGHT = 600;

final int TILE_SIZE = 64;
final int BALL_SIZE = 10;

final int GRASS = 0;
final int WATER = 1;

//KEYBOARD VARIABLES DECLARATION
boolean left, right, up, down;

//GAME VARIABLES DECALRATION
PImage[] tileImgs = new PImage[2];

Ball ball = new Ball();
Tile[][] tiles;

int mapSizeX, mapSizeY;
float playerX, playerY;

//SETUP
void setup(){
  //sketch setup
  size(1250,600);
  background(0,169,0);
  //tile images init
  for(int i=0;i<tileImgs.length;i++){
    tileImgs[i] = loadImage(i+".png");
  }
  //map init
  playerX = 0;
  playerY = 0;
  mapSizeX = 50;
  mapSizeY = 50;
  //tiles init
  tiles = new Tile[mapSizeX][mapSizeY];
  for(int i=0; i<mapSizeX; i++){
    for(int j=0; j<mapSizeY; j++){
      tiles[i][j] =new Tile(i,j);
    }
  }
}

//DRAW
void draw(){
//logic & movement part
  if(up){playerY--;}
  if(down){playerY++;}
  if(left){playerX--;}
  if(right){playerX++;}
  println("["+playerX+"]["+playerY+"]");
//graphic part
  //render tiles
  for(int i=0;i<mapSizeX;i++){
    for(int j=0;j<mapSizeY;j++){
      tiles[i][j].render();
    }
  }
  //render ball
  ball.render();
}

//CONTROLS HANDLING
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