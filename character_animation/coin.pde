class Coin {
  PVector position;
  float r = 10;
  
  Coin(){
    position = new PVector(random(width-50), random(height-50));
  }
  
  void display(){
    fill(250, 255, 5);
    circle(position.x, position.y, 2*r);
  }
  

}
