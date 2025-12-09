ArrayList<Block> tiles = new ArrayList<Block>();
public void terrain(float x, float y, float w, float h, PImage p, int type) {
  for(float i = x; i < x+w*40; i += 40) {
    tiles.add(new Block(i, y, 40, h, p, type));
  }
}

public void upPipe(float x, float y, float h) {
  for(float i = y; i > y-h*40; i -= 40) {
    if(i != y-(h-1)*40) {
      tiles.add(new Block(x, i, 80, 40, pipe, 0));
    } else {
      tiles.add(new Block(x, y-(h-1)*40, 80, 40, pipeTop, 0));
    }
  }  
}
