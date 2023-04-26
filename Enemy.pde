/*class Enemy{
  float x, y, w,h;
  float fartx, farty;
  
  boolean moveLeft, moveUp, moveDown, moveRight;


//construcctor
  Enemy(){
    w = 40;
    h = 40;
    x = 765;
    y = 45;
    
   moveLeft = false; 
   moveUp = false;
   moveDown = false;
   moveRight = false;
    
}

  void update(){
  // chase behavior
  float afstandMellem = dist(p.x+p.w/2, p.y + p.h/2, x + w/2, y+h/2);
  fill(255);
  text("Afstanden mellem:" + afstandMellem, 50, 50);
  
  if(afstandMellem < 2000){
    // close largest gap
    if(abs(p.x-x) < abs(p.y-y)){
      text("closing vertical gap", 200, 50);
      if(y < p.y){
        moveUp = false;
        moveDown = true;
      }else{
      moveUp = true;
      moveDown = false;
      }
    }else{
      text("closing horizontal gap", 200,50);
      if(x < p.x){
      moveLeft = false;
      moveRight = true;
      }else{
      moveLeft = true;
      moveRight = false;
      }
    }//end gap closing
  }// end afstandMellem
   
    ////////update position
    if (moveLeft && !moveRight){
    fartx = -3;
    farty = 0;
    }
    if (moveRight && !moveLeft){
    fartx = 3;
    farty = 0;
    }
    if (!moveLeft && !moveRight){
    fartx = 0;
    }
  
if (moveUp && !moveDown){
  farty = -3;
  fartx = 0;
}
if(moveDown && !moveUp){
  farty = 3;
  fartx = 0;
}
if (!moveUp && !moveDown){
farty = 0;
}

   x += fartx;
   y += farty;





}


void display(){
  fill(255,20,147);
  rect(x,y,w,h);
  

  } 
}
*/
