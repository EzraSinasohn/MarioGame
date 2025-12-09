Mario mario = new Mario(120, 700, 30, 40);

void setup() {
  size(1000, 800);
  rectMode(CENTER);
  textSize(25);
  textAlign(CENTER);
  imageMode(CENTER);
  smallMarioIdleR = loadImage("SmallMarioIdleR.png");
  smallMarioIdleL = loadImage("SmallMarioIdleL.png");
  smallMarioJumpR = loadImage("SmallMarioJumpR.png");
  smallMarioJumpL = loadImage("SmallMarioJumpL.png");
  smallMarioRunR1 = loadImage("SmallMarioRunR1.png");
  smallMarioRunL1 = loadImage("SmallMarioRunL1.png");
  smallMarioRunR2 = loadImage("SmallMarioRunR2.png");
  smallMarioRunL2 = loadImage("SmallMarioRunL2.png");
  smallMarioRunR3 = loadImage("SmallMarioRunR3.png");
  smallMarioRunL3 = loadImage("SmallMarioRunL3.png");
  smallMarioSlideR = loadImage("SmallMarioSlideR.png");
  smallMarioSlideL = loadImage("SmallMarioSlideL.png");
  goomba1 = loadImage("Goomba1.png");
  goomba2 = loadImage("Goomba2.png");
  goombaStomped = loadImage("GoombaStomped.png");
  groundBlock = loadImage("GroundBlock.png");
  hardBlock = loadImage("HardBlock.png");
  brick = loadImage("MarioBrick.png");
  itemBlock1 = loadImage("MarioItemBlock1.png");
  itemBlock2 = loadImage("MarioItemBlock2.png");
  itemBlock3 = loadImage("MarioItemBlock3.png");
  hitBlock = loadImage("MarioHitBlock.png");
  pipeTop = loadImage("PipeTop.png");
  pipe = loadImage("Pipe.png");
  frameRate(60);
  terrain(0, height-20, 69, 40, groundBlock, 0);
  terrain(0, height-60, 69, 40, groundBlock, 0);
  terrain(2840, height-20, 15, 40, groundBlock, 0);
  terrain(2840, height-60, 15, 40, groundBlock, 0);
  terrain(3560, height-20, 64, 40, groundBlock, 0);
  terrain(3560, height-60, 64, 40, groundBlock, 0);
  terrain(6200, height-20, 69, 40, groundBlock, 0);
  terrain(6200, height-60, 69, 40, groundBlock, 0);
  terrain(5920, height-100, 5, 40, hardBlock, 0);
  terrain(5960, height-140, 4, 40, hardBlock, 0);
  terrain(6000, height-180, 3, 40, hardBlock, 0);
  terrain(6040, height-220, 2, 40, hardBlock, 0);
  terrain(6200, height-100, 4, 40, hardBlock, 0);
  terrain(6200, height-140, 3, 40, hardBlock, 0);
  terrain(6200, height-180, 2, 40, hardBlock, 0);
  terrain(6200, height-220, 1, 40, hardBlock, 0);
  terrain(5360, height-100, 4, 40, hardBlock, 0);
  terrain(5400, height-140, 3, 40, hardBlock, 0);
  terrain(5440, height-180, 2, 40, hardBlock, 0);
  terrain(5480, height-220, 1, 40, hardBlock, 0);
  terrain(5600, height-100, 4, 40, hardBlock, 0);
  terrain(5600, height-140, 3, 40, hardBlock, 0);
  terrain(5600, height-180, 2, 40, hardBlock, 0);
  terrain(5600, height-220, 1, 40, hardBlock, 0);
  terrain(7240, height-100, 9, 40, hardBlock, 0);
  terrain(7280, height-140, 8, 40, hardBlock, 0);
  terrain(7320, height-180, 7, 40, hardBlock, 0);
  terrain(7360, height-220, 6, 40, hardBlock, 0);
  terrain(7400, height-260, 5, 40, hardBlock, 0);
  terrain(7440, height-300, 4, 40, hardBlock, 0);
  terrain(7480, height-340, 3, 40, hardBlock, 0);
  terrain(7520, height-380, 2, 40, hardBlock, 0);
  terrain(640, height-220, 1, 40, itemBlock1, 2);
  terrain(800, height-220, 1, 40, brick, 1);
  terrain(840, height-220, 1, 40, itemBlock1, 2);
  terrain(880, height-220, 1, 40, brick, 1);
  terrain(920, height-220, 1, 40, itemBlock1, 2);
  terrain(960, height-220, 1, 40, brick, 1);
  terrain(880, height-380, 1, 40, itemBlock1, 2);
  terrain(3080, height-220, 1, 40, brick, 1);
  terrain(3120, height-220, 1, 40, itemBlock1, 2);
  terrain(3160, height-220, 1, 40, brick, 1);
  terrain(3200, height-380, 8, 40, brick, 1);
  terrain(3640, height-380, 3, 40, brick, 1);
  terrain(3760, height-380, 1, 40, itemBlock1, 2);
  terrain(3760, height-380, 1, 40, brick, 2);
  upPipe(1140, height-100, 2);
  upPipe(1540, height-100, 3);
  upPipe(1860, height-100, 4);
  upPipe(2300, height-100, 4);
  upPipe(6540, height-100, 2);
  upPipe(7180, height-100, 2);
  enemies.add(new Enemy(900, 700, 40, 40, -2));
  enemies.add(new Enemy(1640, 700, 40, 40, -2));
  enemies.add(new Enemy(2080, 700, 40, 40, -2));
  enemies.add(new Enemy(2140, 700, 40, 40, -2));
  enemies.add(new Enemy(6960, 700, 40, 40, -2));
  enemies.add(new Enemy(7020, 700, 40, 40, -2));
}

void draw() {
  background(100, 100, 255);
  mario.move();
  mario.show();
  for(int i = 0; i < tiles.size(); i++) {
    tiles.get(i).move();
    tiles.get(i).show();
  }
  for(int i = 0; i < enemies.size(); i++) {
    enemies.get(i).move();
    if(enemies.get(i).getX() > 0 && enemies.get(i).getX() < width) {enemies.get(i).show();}
  }
  
  text((int) (mario.relX), 50, 50);
  text(mario.getY(), 250, 50);
}
