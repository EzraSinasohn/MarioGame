int resetTimer = -1000;
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
  marioDying = loadImage("MarioDying.png");
  bigMarioIdleR = loadImage("BigMarioIdleR.png");
  bigMarioIdleL = loadImage("BigMarioIdleL.png");
  bigMarioJumpR = loadImage("BigMarioJumpR.png");
  bigMarioJumpL = loadImage("BigMarioJumpL.png");
  bigMarioRunR1 = loadImage("BigMarioRunR1.png");
  bigMarioRunL1 = loadImage("BigMarioRunL1.png");
  bigMarioRunR2 = loadImage("BigMarioRunR2.png");
  bigMarioRunL2 = loadImage("BigMarioRunL2.png");
  bigMarioRunR3 = loadImage("BigMarioRunR3.png");
  bigMarioRunL3 = loadImage("BigMarioRunL3.png");
  bigMarioSlideR = loadImage("BigMarioSlideR.png");
  bigMarioSlideL = loadImage("BigMarioSlideL.png");
  bigMarioCrouchR = loadImage("BigMarioCrouchR.png");
  bigMarioCrouchL = loadImage("BigMarioCrouchL.png");
  fireMarioIdleR = loadImage("FireMarioIdleR.png");
  fireMarioIdleL = loadImage("FireMarioIdleL.png");
  fireMarioJumpR = loadImage("FireMarioJumpR.png");
  fireMarioJumpL = loadImage("FireMarioJumpL.png");
  fireMarioRunR1 = loadImage("FireMarioRunR1.png");
  fireMarioRunL1 = loadImage("FireMarioRunL1.png");
  fireMarioRunR2 = loadImage("FireMarioRunR2.png");
  fireMarioRunL2 = loadImage("FireMarioRunL2.png");
  fireMarioRunR3 = loadImage("FireMarioRunR3.png");
  fireMarioRunL3 = loadImage("FireMarioRunL3.png");
  fireMarioSlideR = loadImage("FireMarioSlideR.png");
  fireMarioSlideL = loadImage("FireMarioSlideL.png");
  fireMarioCrouchR = loadImage("FireMarioCrouchR.png");
  fireMarioCrouchL = loadImage("FireMarioCrouchL.png");
  fireMarioThrowR = loadImage("FireMarioThrowR.png");
  fireMarioThrowL = loadImage("FireMarioThrowL.png");
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
  mushroom = loadImage("Mushroom.png");
  fireFlower = loadImage("FireFlower.png");
  frameRate(60);
  terrain(0, height-20, 69, 40, groundBlock, 0, 0);
  terrain(0, height-60, 69, 40, groundBlock, 0, 0);
  terrain(2840, height-20, 15, 40, groundBlock, 0, 0);
  terrain(2840, height-60, 15, 40, groundBlock, 0, 0);
  terrain(3560, height-20, 64, 40, groundBlock, 0, 0);
  terrain(3560, height-60, 64, 40, groundBlock, 0, 0);
  terrain(6200, height-20, 69, 40, groundBlock, 0, 0);
  terrain(6200, height-60, 69, 40, groundBlock, 0, 0);
  terrain(5920, height-100, 5, 40, hardBlock, 0, 0);
  terrain(5960, height-140, 4, 40, hardBlock, 0, 0);
  terrain(6000, height-180, 3, 40, hardBlock, 0, 0);
  terrain(6040, height-220, 2, 40, hardBlock, 0, 0);
  terrain(6200, height-100, 4, 40, hardBlock, 0, 0);
  terrain(6200, height-140, 3, 40, hardBlock, 0, 0);
  terrain(6200, height-180, 2, 40, hardBlock, 0, 0);
  terrain(6200, height-220, 1, 40, hardBlock, 0, 0);
  terrain(5360, height-100, 4, 40, hardBlock, 0, 0);
  terrain(5400, height-140, 3, 40, hardBlock, 0, 0);
  terrain(5440, height-180, 2, 40, hardBlock, 0, 0);
  terrain(5480, height-220, 1, 40, hardBlock, 0, 0);
  terrain(5600, height-100, 4, 40, hardBlock, 0, 0);
  terrain(5600, height-140, 3, 40, hardBlock, 0, 0);
  terrain(5600, height-180, 2, 40, hardBlock, 0, 0);
  terrain(5600, height-220, 1, 40, hardBlock, 0, 0);
  terrain(7240, height-100, 9, 40, hardBlock, 0, 0);
  terrain(7280, height-140, 8, 40, hardBlock, 0, 0);
  terrain(7320, height-180, 7, 40, hardBlock, 0, 0);
  terrain(7360, height-220, 6, 40, hardBlock, 0, 0);
  terrain(7400, height-260, 5, 40, hardBlock, 0, 0);
  terrain(7440, height-300, 4, 40, hardBlock, 0, 0);
  terrain(7480, height-340, 3, 40, hardBlock, 0, 0);
  terrain(7520, height-380, 2, 40, hardBlock, 0, 0);
  terrain(640, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(800, height-220, 1, 40, brick, 1, 0);
  terrain(840, height-220, 1, 40, itemBlock1, 2, 2);
  terrain(880, height-220, 1, 40, brick, 1, 0);
  terrain(920, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(960, height-220, 1, 40, brick, 1, 0);
  terrain(880, height-380, 1, 40, itemBlock1, 2, 1);
  terrain(3080, height-220, 1, 40, brick, 1, 0);
  terrain(3120, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(3160, height-220, 1, 40, brick, 1, 0);
  terrain(3200, height-380, 8, 40, brick, 1, 0);
  terrain(3640, height-380, 3, 40, brick, 1, 0);
  terrain(3760, height-380, 1, 40, itemBlock1, 2, 1);
  terrain(3760, height-220, 1, 40, brick, 2, 1);
  terrain(4000, height-220, 1, 40, brick, 1, 0);
  terrain(4040, height-220, 1, 40, brick, 2, 4);
  terrain(4240, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4360, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4360, height-380, 1, 40, itemBlock1, 2, 2);
  terrain(4480, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4720, height-220, 1, 40, brick, 1, 0);
  terrain(4840, height-380, 3, 40, brick, 1, 0);
  terrain(5120, height-380, 1, 40, brick, 1, 0);
  terrain(5160, height-380, 2, 40, itemBlock1, 2, 1);
  terrain(5160, height-220, 2, 40, brick, 1, 0);
  terrain(5240, height-380, 1, 40, brick, 1, 0);
  terrain(6720, height-220, 2, 40, brick, 1, 0);
  terrain(6800, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(6840, height-220, 1, 40, brick, 1, 0);
  upPipe(1140, height-100, 2);
  upPipe(1540, height-100, 3);
  upPipe(1860, height-100, 4);
  upPipe(2300, height-100, 4);
  upPipe(6540, height-100, 2);
  upPipe(7180, height-100, 2);
  enemies.add(new Enemy(900, 700, 40, 40, -1.5, 0));
  enemies.add(new Enemy(1640, 700, 40, 40, -1.5, 1));
  enemies.add(new Enemy(2080, 700, 40, 40, -1.5, 2));
  enemies.add(new Enemy(2140, 700, 40, 40, -1.5, 3));
  enemies.add(new Enemy(3880, 700, 40, 40, -1.5, 4));
  enemies.add(new Enemy(3940, 700, 40, 40, -1.5, 5));
  enemies.add(new Enemy(4560, 700, 40, 40, -1.5, 6));
  enemies.add(new Enemy(4620, 700, 40, 40, -1.5, 7));
  enemies.add(new Enemy(4960, 700, 40, 40, -1.5, 8));
  enemies.add(new Enemy(5020, 700, 40, 40, -1.5, 9));
  enemies.add(new Enemy(5120, 700, 40, 40, -1.5, 10));
  enemies.add(new Enemy(5180, 700, 40, 40, -1.5, 11));
  enemies.add(new Enemy(6960, 700, 40, 40, -1.5, 12));
  enemies.add(new Enemy(7020, 700, 40, 40, -1.5, 13));
  //items.add(new Item(120, 700, 40, 40, 0, 3, mario.vx));
}

void draw() {
  if(millis()-resetTimer > 1000) {
    background(100, 100, 255);
    if(!marioDead) {
      for(int i = 0; i < enemies.size(); i++) {
        enemies.get(i).move();
        if(enemies.get(i).getX() > 0 && enemies.get(i).getX() < width) {enemies.get(i).show();}
      }
      for(int i = 0; i < items.size(); i++) {
        items.get(i).move();
      }
      for(int i = 0; i < fireballs.size(); i++) {
        fireballs.get(i).move();
        fireballs.get(i).show();
      }
    } else {
      if(mario.getY() > height+300) {reset();}
    }
    for(int i = 0; i < tiles.size(); i++) {
      tiles.get(i).move();
      tiles.get(i).show();
    }
    mario.move();
    mario.show();
    text((int) (mario.relX), 50, 50);
    text(mario.getY(), 250, 50);
  }
  if(millis()-resetTimer < 500) {
    fill(0);
    rect(width/2, height/2, width, height);
    fill(200, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(100);
    text("YOU DIED", width/2, height/2);
  }
}

void reset() {
  resetTimer = millis();
  for(int i = enemies.size()-1; i >= 0; i--) {
    enemies.remove(i);
  }
  for(int i = items.size()-1; i >= 0; i--) {
    items.remove(i);
  }
  for(int i = fireballs.size()-1; i >= 0; i--) {
    fireballs.remove(i);
  }
  for(int i = tiles.size()-1; i >= 0; i--) {
    tiles.remove(i);
  }
  marioState = 0;
  marioDead = false;
  mario.setX(120);
  mario.setY(700);
  mario.setW(30);
  mario.setH(40);
  right = true;
  terrain(0, height-20, 69, 40, groundBlock, 0, 0);
  terrain(0, height-60, 69, 40, groundBlock, 0, 0);
  terrain(2840, height-20, 15, 40, groundBlock, 0, 0);
  terrain(2840, height-60, 15, 40, groundBlock, 0, 0);
  terrain(3560, height-20, 64, 40, groundBlock, 0, 0);
  terrain(3560, height-60, 64, 40, groundBlock, 0, 0);
  terrain(6200, height-20, 69, 40, groundBlock, 0, 0);
  terrain(6200, height-60, 69, 40, groundBlock, 0, 0);
  terrain(5920, height-100, 5, 40, hardBlock, 0, 0);
  terrain(5960, height-140, 4, 40, hardBlock, 0, 0);
  terrain(6000, height-180, 3, 40, hardBlock, 0, 0);
  terrain(6040, height-220, 2, 40, hardBlock, 0, 0);
  terrain(6200, height-100, 4, 40, hardBlock, 0, 0);
  terrain(6200, height-140, 3, 40, hardBlock, 0, 0);
  terrain(6200, height-180, 2, 40, hardBlock, 0, 0);
  terrain(6200, height-220, 1, 40, hardBlock, 0, 0);
  terrain(5360, height-100, 4, 40, hardBlock, 0, 0);
  terrain(5400, height-140, 3, 40, hardBlock, 0, 0);
  terrain(5440, height-180, 2, 40, hardBlock, 0, 0);
  terrain(5480, height-220, 1, 40, hardBlock, 0, 0);
  terrain(5600, height-100, 4, 40, hardBlock, 0, 0);
  terrain(5600, height-140, 3, 40, hardBlock, 0, 0);
  terrain(5600, height-180, 2, 40, hardBlock, 0, 0);
  terrain(5600, height-220, 1, 40, hardBlock, 0, 0);
  terrain(7240, height-100, 9, 40, hardBlock, 0, 0);
  terrain(7280, height-140, 8, 40, hardBlock, 0, 0);
  terrain(7320, height-180, 7, 40, hardBlock, 0, 0);
  terrain(7360, height-220, 6, 40, hardBlock, 0, 0);
  terrain(7400, height-260, 5, 40, hardBlock, 0, 0);
  terrain(7440, height-300, 4, 40, hardBlock, 0, 0);
  terrain(7480, height-340, 3, 40, hardBlock, 0, 0);
  terrain(7520, height-380, 2, 40, hardBlock, 0, 0);
  terrain(640, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(800, height-220, 1, 40, brick, 1, 0);
  terrain(840, height-220, 1, 40, itemBlock1, 2, 2);
  terrain(880, height-220, 1, 40, brick, 1, 0);
  terrain(920, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(960, height-220, 1, 40, brick, 1, 0);
  terrain(880, height-380, 1, 40, itemBlock1, 2, 1);
  terrain(3080, height-220, 1, 40, brick, 1, 0);
  terrain(3120, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(3160, height-220, 1, 40, brick, 1, 0);
  terrain(3200, height-380, 8, 40, brick, 1, 0);
  terrain(3640, height-380, 3, 40, brick, 1, 0);
  terrain(3760, height-380, 1, 40, itemBlock1, 2, 1);
  terrain(3760, height-220, 1, 40, brick, 2, 1);
  terrain(4000, height-220, 1, 40, brick, 1, 0);
  terrain(4040, height-220, 1, 40, brick, 2, 4);
  terrain(4240, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4360, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4360, height-380, 1, 40, itemBlock1, 2, 2);
  terrain(4480, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(4720, height-220, 1, 40, brick, 1, 0);
  terrain(4840, height-380, 3, 40, brick, 1, 0);
  terrain(5120, height-380, 1, 40, brick, 1, 0);
  terrain(5160, height-380, 2, 40, itemBlock1, 2, 1);
  terrain(5160, height-220, 2, 40, brick, 1, 0);
  terrain(5240, height-380, 1, 40, brick, 1, 0);
  terrain(6720, height-220, 2, 40, brick, 1, 0);
  terrain(6800, height-220, 1, 40, itemBlock1, 2, 1);
  terrain(6840, height-220, 1, 40, brick, 1, 0);
  upPipe(1140, height-100, 2);
  upPipe(1540, height-100, 3);
  upPipe(1860, height-100, 4);
  upPipe(2300, height-100, 4);
  upPipe(6540, height-100, 2);
  upPipe(7180, height-100, 2);
  enemies.add(new Enemy(900, 700, 40, 40, -1.5, 0));
  enemies.add(new Enemy(1640, 700, 40, 40, -1.5, 1));
  enemies.add(new Enemy(2080, 700, 40, 40, -1.5, 2));
  enemies.add(new Enemy(2140, 700, 40, 40, -1.5, 3));
  enemies.add(new Enemy(3880, 700, 40, 40, -1.5, 4));
  enemies.add(new Enemy(3940, 700, 40, 40, -1.5, 5));
  enemies.add(new Enemy(4560, 700, 40, 40, -1.5, 6));
  enemies.add(new Enemy(4620, 700, 40, 40, -1.5, 7));
  enemies.add(new Enemy(4960, 700, 40, 40, -1.5, 8));
  enemies.add(new Enemy(5020, 700, 40, 40, -1.5, 9));
  enemies.add(new Enemy(5120, 700, 40, 40, -1.5, 10));
  enemies.add(new Enemy(5180, 700, 40, 40, -1.5, 11));
  enemies.add(new Enemy(6960, 700, 40, 40, -1.5, 12));
  enemies.add(new Enemy(7020, 700, 40, 40, -1.5, 13));
}
