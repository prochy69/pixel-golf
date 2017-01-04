class Tile{
  
  int id;
  int x,y;
  
  Tile(int tempx, int tempy){
    this.x = tempx;
    this.y = tempy;
    this.id = round(random(1)-0.3);
  }
  
  void render(){
    imageMode(CORNER);
    image(tileImgs[this.id],this.x*TILE_SIZE+playerX,this.y*TILE_SIZE+playerY);
  }
}