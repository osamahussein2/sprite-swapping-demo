//character art from https://opengameart.org/content/stella
//coin art from https://opengameart.org/content/coin-animation
//background art from https://www.kenney.nl/assets/roguelike-rpg-pack
//footstep audio from https://www.kenney.nl/assets/rpg-audio
//coin audio from https://pixabay.com/sound-effects/coin-c-02-102844/

PImage map;

Coin coin;
Hero character;

void setup(){
  size(400, 400);
  map = loadImage("sample_map.png");
  
  coin = new Coin();
  
  character = new Hero();
}

void draw(){
  image(map, 0, 0, map.width * 2, map.height * 2);
  
  coin.display();
  
  character.move();
  character.display();
}

void keyPressed(){
  //testing for debug purposes (before collision detection is added)
  if(key == ' '){
    coin = new Coin();
  }
  
  if (keyCode == UP) {
    character.velocity.y -= 1;
  }
  if (keyCode == DOWN) {
    character.velocity.y += 1;
  }
  if (keyCode == LEFT) {
    character.velocity.x -= 1;
  }
  if (keyCode == RIGHT) {
    character.velocity.x += 1;
  }
  character.velocity.x = constrain(character.velocity.x, -1, 1);
  character.velocity.y = constrain(character.velocity.y, -1, 1);
}

void keyReleased() {
  if (keyCode == UP) {
    character.velocity.y += 1;
  }
  if (keyCode == DOWN) {
    character.velocity.y -= 1;
  }
  if (keyCode == LEFT) {
    character.velocity.x += 1;
  }
  if (keyCode == RIGHT) {
    character.velocity.x -= 1;
  }
  character.velocity.x = constrain(character.velocity.x, -1, 1);
  character.velocity.y = constrain(character.velocity.y, -1, 1);
}
