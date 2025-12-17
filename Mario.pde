PImage costume, smallMarioIdleR, smallMarioIdleL, smallMarioJumpR, smallMarioJumpL, smallMarioRunR1, smallMarioRunL1, smallMarioRunR2, smallMarioRunL2, smallMarioRunR3, smallMarioRunL3, smallMarioSlideR, smallMarioSlideL, marioDying, bigMarioIdleR, bigMarioIdleL, bigMarioJumpR, bigMarioJumpL, bigMarioRunR1, bigMarioRunL1, bigMarioRunR2, bigMarioRunL2, bigMarioRunR3, bigMarioRunL3, bigMarioSlideR, bigMarioSlideL, bigMarioCrouchR, bigMarioCrouchL, fireMarioIdleR, fireMarioIdleL, fireMarioJumpR, fireMarioJumpL, fireMarioRunR1, fireMarioRunL1, fireMarioRunR2, fireMarioRunL2, fireMarioRunR3, fireMarioRunL3, fireMarioSlideR, fireMarioSlideL, fireMarioCrouchR, fireMarioCrouchL, fireMarioThrowR, fireMarioThrowL;
float costumeW = 30, costumeH = 40;
boolean[] keys = new boolean[5];
boolean canJump = false, right = true, jumping = false, crouching = false, bonk = false, fireballing = false, marioDead = false;
int marioState = 0, fireballTimer = 0, invincibility = -3000;
class Mario extends Object {
  float startX, relX;
  public Mario(float x, float y, float w, float h) {
    myX = x;
    startX = x;
    relX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    vx = 0;
    vy = 0;
    g = 1;
  }
  
  public void show() {
    if(marioState == -1) {
      costume = marioDying;
      costumeW = 35;
      costumeH = 35;
    } else if(marioState == 0) {
      if(canJump) {
        if(right && vx == 0) {
          costume = smallMarioIdleR;
          costumeW = 30;
          costumeH = 40;
        } else if(!right && vx == 0) {
          costume = smallMarioIdleL;
          costumeW = 30;
          costumeH = 40;
        } else if(keys[0] && vx > 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunR1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunR2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunR3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          }
        } else if(keys[1] && vx < 0) {
          if(keys[4]) {
            if(Math.round(millis()/80)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/80)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          } else {
            if(Math.round(millis()/160)%3 == 0) {
              costume = smallMarioRunL1;
              costumeW = 37.5;
              costumeH = 40;
            } else if(Math.round(millis()/160)%3 == 1) {
              costume = smallMarioRunL2;
              costumeW = 27.5;
              costumeH = 40;
            } else {
              costume = smallMarioRunL3;
              costumeW = 32.5;
              costumeH = 37.5;
            }
          }
        } else {
          if(right) {
            costume = smallMarioSlideR;
            costumeW = 32.5;
            costumeH = 40;
          } else {
            costume = smallMarioSlideL;
            costumeW = 32.5;
            costumeH = 40;
          }
        }
      } else {
        if(right && jumping) {
          costume = smallMarioJumpR;
          costumeW = 40;
          costumeH = 40;
        } else if (!right && jumping) {
          costume = smallMarioJumpL;
          costumeW = 40;
          costumeH = 40;
        }
      }
    } else if(marioState == 1) {
      if(!crouching) {
        if(canJump) {
          if(right && vx == 0) {
            costume = bigMarioIdleR;
            costumeW = 40;
            costumeH = 80;
          } else if(!right && vx == 0) {
            costume = bigMarioIdleL;
            costumeW = 40;
            costumeH = 80;
          } else if(keys[0] && vx > 0) {
            if(keys[4]) {
              if(Math.round(millis()/80)%3 == 0) {
                costume = bigMarioRunR1;
                costumeW = 40;
                costumeH = 80;
              } else if(Math.round(millis()/80)%3 == 1) {
                costume = bigMarioRunR2;
                costumeW = 40;
                costumeH = 75;
              } else {
                costume = bigMarioRunR3;
                costumeW = 35;
                costumeH = 77.5;
              }
            } else {
              if(Math.round(millis()/160)%3 == 0) {
                costume = bigMarioRunR1;
                costumeW = 40;
                costumeH = 80;
              } else if(Math.round(millis()/160)%3 == 1) {
                costume = bigMarioRunR2;
                costumeW = 40;
                costumeH = 75;
              } else {
                costume = bigMarioRunR3;
                costumeW = 35;
                costumeH = 77.5;
              }
            }
          } else if(keys[1] && vx < 0) {
            if(keys[4]) {
              if(Math.round(millis()/80)%3 == 0) {
                costume = bigMarioRunL1;
                costumeW = 40;
                costumeH = 80;
              } else if(Math.round(millis()/80)%3 == 1) {
                costume = bigMarioRunL2;
                costumeW = 40;
                costumeH = 75;
              } else {
                costume = bigMarioRunL3;
                costumeW = 35;
                costumeH = 77.5;
              }
            } else {
              if(Math.round(millis()/160)%3 == 0) {
                costume = bigMarioRunL1;
                costumeW = 40;
                costumeH = 80;
              } else if(Math.round(millis()/160)%3 == 1) {
                costume = bigMarioRunL2;
                costumeW = 40;
                costumeH = 75;
              } else {
                costume = bigMarioRunL3;
                costumeW = 35;
                costumeH = 77.5;
              }
            }
          } else {
            if(right) {
              costume = bigMarioSlideR;
              costumeW = 40;
              costumeH = 80;
            } else {
              costume = bigMarioSlideL;
              costumeW = 40;
              costumeH = 80;
            }
          }
        } else {
          if(right && jumping) {
            costume = bigMarioJumpR;
            costumeW = 40;
            costumeH = 80;
          } else if (!right && jumping) {
            costume = bigMarioJumpL;
            costumeW = 40;
            costumeH = 80;
          }
        }
      } else {
        if(right) {
          costume = bigMarioCrouchR;
          costumeW = 40;
          costumeH = 55;
        } else {
          costume = bigMarioCrouchL;
          costumeW = 40;
          costumeH = 55;
        }
      }
    } else if(marioState == 2) {
      if(!crouching) {
        if(millis()-fireballTimer > 200) {
          if(canJump) {
            if(right && vx == 0) {
              costume = fireMarioIdleR;
              costumeW = 40;
              costumeH = 80;
            } else if(!right && vx == 0) {
              costume = fireMarioIdleL;
              costumeW = 40;
              costumeH = 80;
            } else if(keys[0] && vx > 0) {
              if(keys[4]) {
                if(Math.round(millis()/80)%3 == 0) {
                  costume = fireMarioRunR1;
                  costumeW = 40;
                  costumeH = 80;
                } else if(Math.round(millis()/80)%3 == 1) {
                  costume = fireMarioRunR2;
                  costumeW = 40;
                  costumeH = 75;
                } else {
                  costume = fireMarioRunR3;
                  costumeW = 35;
                  costumeH = 77.5;
                }
              } else {
                if(Math.round(millis()/160)%3 == 0) {
                  costume = fireMarioRunR1;
                  costumeW = 40;
                  costumeH = 80;
                } else if(Math.round(millis()/160)%3 == 1) {
                  costume = fireMarioRunR2;
                  costumeW = 40;
                  costumeH = 75;
                } else {
                  costume = fireMarioRunR3;
                  costumeW = 35;
                  costumeH = 77.5;
                }
              }
            } else if(keys[1] && vx < 0) {
              if(keys[4]) {
                if(Math.round(millis()/80)%3 == 0) {
                  costume = fireMarioRunL1;
                  costumeW = 40;
                  costumeH = 80;
                } else if(Math.round(millis()/80)%3 == 1) {
                  costume = fireMarioRunL2;
                  costumeW = 40;
                  costumeH = 75;
                } else {
                  costume = fireMarioRunL3;
                  costumeW = 35;
                  costumeH = 77.5;
                }
              } else {
                if(Math.round(millis()/160)%3 == 0) {
                  costume = fireMarioRunL1;
                  costumeW = 40;
                  costumeH = 80;
                } else if(Math.round(millis()/160)%3 == 1) {
                  costume = fireMarioRunL2;
                  costumeW = 40;
                  costumeH = 75;
                } else {
                  costume = fireMarioRunL3;
                  costumeW = 35;
                  costumeH = 77.5;
                }
              }
            } else {
              if(right) {
                costume = fireMarioSlideR;
                costumeW = 40;
                costumeH = 80;
              } else {
                costume = fireMarioSlideL;
                costumeW = 40;
                costumeH = 80;
              }
            }
          } else {
            if(right && jumping) {
              costume = fireMarioJumpR;
              costumeW = 40;
              costumeH = 80;
            } else if (!right && jumping) {
              costume = fireMarioJumpL;
              costumeW = 40;
              costumeH = 80;
            }
          }
        } else {
          if(right) {
            costume = fireMarioThrowR;
            costumeW = 40;
            costumeH = 75;
          } else {
            costume = fireMarioThrowL;
            costumeW = 40;
            costumeH = 75;
          }
        }
      } else {
        if(right) {
          costume = fireMarioCrouchR;
          costumeW = 40;
          costumeH = 55;
        } else {
          costume = fireMarioCrouchL;
          costumeW = 40;
          costumeH = 55;
        }
      }
    }
    //rect(myX, myY, myWidth, myHeight);
    image(costume, myX, myY, costumeW, costumeH);
  }
  
  public void collision() {
    canJump = false;
    bonk = false;
    for(int i = 0; i < tiles.size(); i++) {
      vx = tiles.get(i).getVX();
      if(tiles.get(i).r() && tiles.get(i).l() && tiles.get(i).b() && tiles.get(i).t()) {
        if(vy > 0 && !tiles.get(i).getFloor() && tiles.get(i).bOL() > -20) {
          vy = 0;
          myY = tiles.get(i).getT()-myHeight/2;
          canJump = true;
          if(!keys[2]) {jumping = false;}
        } else if(vy < 0 && !tiles.get(i).getRoof() && tiles.get(i).tOL() > -20 /*tiles.get(i).tOL() > -35*/) {
          vy = 0;
          myY = tiles.get(i).getB()+myHeight/2;
          if(tiles.get(i).breakable || tiles.get(i).itemHeld) {tiles.get(i).bump(i);}
          bonk = true;
        } else if(vx > 0) {
          //keys[0] = false;
          //vx = 0;
          myX = tiles.get(i).getL()-myWidth/2;
          for(int n = 0; n < tiles.size(); n++) {
            tiles.get(n).setX(tiles.get(n).getX()+501-myX);
          }
          for(int e = 0; e < enemies.size(); e++) {
            enemies.get(e).setX(enemies.get(e).getX()+501-myX);
          }
          for(int m = 0; m < items.size(); m++) {
            items.get(m).setX(items.get(m).getX()+501-myX);
          }
          myX = 500;
        } else if (vx < 0) {
          //keys[1] = false;
          //vx = 0;
          myX = tiles.get(i).getR()+myWidth/2;
          for(int n = 0; n < tiles.size(); n++) {
            tiles.get(n).setX(tiles.get(n).getX()+499-myX);
          }
          for(int e = 0; e < enemies.size(); e++) {
            enemies.get(e).setX(enemies.get(e).getX()+499-myX);
          }
          for(int m = 0; m < items.size(); m++) {
            items.get(m).setX(items.get(m).getX()+499-myX);
          }
          myX = 500;
        }
      }
    }
  }
  
  public void move() {
    if(keys[2] && canJump) {vy = -19;}
    if(vy < 14) {vy += g;} else {vy = 14;}
    myY += vy;
    if(!marioDead) {
      collision();
      enemyStomp();
      itemGet();
      if(myX != 500) {
        for(int i = 0; i < tiles.size(); i++) {
          tiles.get(i).setX(tiles.get(i).getX()+500-myX);
        }
        for(int i = 0; i < enemies.size(); i++) {
          enemies.get(i).setX(enemies.get(i).getX()+500-myX);
        }
        for(int i = 0; i < items.size(); i++) {
          items.get(i).setX(items.get(i).getX()+500-myX);
        }
        myX = 500;
      }
    }
    if(myY > height+300) {marioDead = true;}
    if(keys[0] && !keys[1]) {right = true;}
    else if(keys[1] && !keys[0]) {right = false;}
    if(keys[3]) {
      crouching = true;
    } else {
      if(!bonk) {
        crouching = false;
      }
    }
  }
  
  public void enemyStomp() {
    for(int i = 0; i < enemies.size(); i++) {
      if(enemies.get(i).r() && enemies.get(i).l() && enemies.get(i).b() && enemies.get(i).t()) {
        if(vy > 0 && enemies.get(i).bOL() > -20) {
          canJump = true;
          vy = -10;
          enemies.get(i).die();
          //myY = enemies.get(i).getT()-myHeight/2;
        } else if(vy <= 0 && millis()-invincibility > 3000) {
          marioState -= 1;
          invincibility = millis();
          if(marioState == -1) {
            marioDead = true;
            for(int n = 0; n < keys.length; n++) {keys[n] = false;}
            vx = 0;
            vy = -15;
          } else if(marioState == 0) {
            myHeight = 40;
            myY += 20;
          }
        }
      }
    }
  }
  
  public void itemGet() {
    for(int i = 0; i < items.size(); i++) {
      if(items.get(i).collected || (items.get(i).r() && items.get(i).l() && items.get(i).b() && items.get(i).t())) {
        if(items.get(i).myItem == 1) { //coin
          
        } else if(items.get(i).myItem == 2 && marioState == 0) { //mushroom
          myHeight = 80;
          myY -= 20;
          marioState = 1;
        } else if(items.get(i).myItem == 3) { // fire flower
          if(marioState == 0) {
            myHeight = 80;
            myY -= 20;
          }
          marioState = 2;
        } else if(items.get(i).myItem == 4) { // star
          
        }
        items.remove(i);
      }
    }
  }
  
  public void setVX(float v) {vx = v;}
  public void setVY(float v) {vy = v;}
}

public void keyPressed() {
  if(!marioDead) {
    if(keyCode == RIGHT) {
      keys[0] = true;
      right = true;
    } if(keyCode == LEFT) {
      keys[1] = true;
      right = false;
    } if(keyCode == UP) {
      keys[2] = true;
      jumping = true;
    } if(keyCode == DOWN && marioState > 0) {
      if(!crouching) {
        mario.setH(40);
        mario.setY(mario.getY()+20);
      }
      keys[3] = true;
    } if(key == 'x') {
      keys[4] = true;
      if(marioState == 2 && !crouching && !fireballing && millis()-fireballTimer > 200) {
        if(right) {
          fireballs.add(new Fireball(mario.getX(), mario.getY(), 20, 20, 10, fireballs.size()));
        } else {
          fireballs.add(new Fireball(mario.getX(), mario.getY(), 20, 20, -10, fireballs.size()));
        }
        fireballing = true;
        fireballTimer = millis();
      }
    } if(key == 'r') {
      mario.setVY(-15);
      marioState = -1;
      marioDead = true;
    }
  }
}
  
public void keyReleased() {
  if(keyCode == RIGHT) {
    keys[0] = false;
  } if(keyCode == LEFT) {
    keys[1] = false;
  } if(keyCode == UP) {
    keys[2] = false;
  } if(keyCode == DOWN) {
    keys[3] = false;
    if(marioState > 0) {
      mario.setH(80);
      mario.setY(mario.getY()-20);
    }
  } if(key == 'x') {
    keys[4] = false;
    fireballing = false;
  }
}
