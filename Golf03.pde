///////////////////////////////////////////////////////
//                   /*GOLF v01*/                    //
//                                                   //
//  /* Ball and tiles + generation */                //
//  /* Ball movement using arrow keys */             //
//                                                   //
//            ///////////////////////////            //
//                                                   //
//                   /*GOLF v02*/                    //
//  /* Mouse control support implemented */          //
//  /* Aim line added*/                              //
//  /* Aiming and powering modes added */            //
//     - click LMB to advance mode, RMB to cancel    //
//  /* Ball's direction vector added */              //
//     - creates automatically when advancing from   //
//       mode 1 (aim) to mode 2 (power)              //
//                                                   //
//            ///////////////////////////            //
//                                                   //
//                   /*GOLF v03*/                    //
//  /* Ball can now be stroked, howewer no club      //
//     types are present yet so now you              //
//     are only able to putt */                      //
//  /* Putting the ball out of map now gives         //
//     a blank color instead of graphic bugs*/       //
//                                                   //
///////////////////////////////////////////////////////

//TODO LIST:

//Mouse aiming. State 0 is off, on click =>
//state 1 is aiming, on click create vector of stroke direction =>
//state 2 power with the mouse, on click save the power to the variable ball.speed =>
//state 3 let the ball move, when it stops, set back to state 0 (= ready for next stroke)


//CONSTANTS DECLARATION
final int SCREEN_WIDTH = 1250;
final int SCREEN_HEIGHT = 600;

final int TILE_SIZE = 64;
final int BALL_SIZE = 10;

final int GRASS = 0;
final int WATER = 1;

final int OFF = 0;
final int AIM = 1;
final int POWER = 2;
final int MOVING = 3;

//KEYBOARD VARIABLES DECLARATION
boolean left, right, up, down;
//MOUSE VARIABLES DECLARATION
boolean lmb, rmb, mmb;

//GAME VARIABLES DECALRATION
PImage[] tileImgs = new PImage[2];

Ball ball = new Ball();
Tile[][] tiles;

int mapSizeX, mapSizeY;
float playerX, playerY;

int shotState;





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
//game init
}





//DRAW
void draw(){
  background(0,169,0);
//logic & movement part
//arrow movement
  if(up){playerY--;}
  if(down){playerY++;}
  if(left){playerX--;}
  if(right){playerX++;}

//mouse aim
  if (shotState==0){
    //not aiming
  }else if (shotState==1){
    //aim with mouse
    ball.scopeX = mouseX;
    ball.scopeY = mouseY;
  } else if (shotState==2){
    //power with mouse distance
  } else if (shotState==3){
    //stroke the ball
    //when stopped, get ready for next stroke
    if(ball.speed<0.01){
      ball.speed = 0;
      shotState = 0;
    }
  }


//some random debug shit
//println("["+playerX+"]["+playerY+"]");


//graphic part
//render tiles
  for(int i=0;i<mapSizeX;i++){
    for(int j=0;j<mapSizeY;j++){
      tiles[i][j].render();
    }
  }
  //render aimline
  drawAimLine();
  //render ball
  ball.render();
}

void drawAimLine(){
if (shotState==1||shotState==2){
  strokeWeight(5);
  stroke(0);
  line(ball.scopeX, ball.scopeY, SCREEN_WIDTH/2, SCREEN_HEIGHT/2);
}
}