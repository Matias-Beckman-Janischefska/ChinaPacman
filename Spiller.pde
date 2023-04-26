class Spiller{
  float x, y, w,h;
  float fartx, farty;

  Spiller(){
 x=408;
 y=678;
 w=40;
 h=40;
}  

void update(){
    if (venstre&&!højre){
      fartx = -3;
    }
    if (højre&&!venstre){
      fartx = 3;
    }
    if(!venstre&&!højre){
    fartx = 0;
    }
    if (op&&!ned){
      farty = -3;
    }
    if (ned&&!op){
      farty = 3;
    }
    if(!op&&!ned){
    farty = 0;
    }
    x +=fartx;
    y += farty;
  
  }

void display(){
    fill (255,255,0);
    rect (x,y,w,h);
  }
}
