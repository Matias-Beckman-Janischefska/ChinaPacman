// 1 = w
// 2 = Steder man kan gå

int rows,cols;
int cellWidth, cellHeight;

boolean venstre, op, højre, ned;
Spiller p;
//Enemy e;



int [][] gridmap ={
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
  {1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1},
  {1,0,1,1,0,1,1,1,0,1,0,1,1,1,0,1,1,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,1,1,0,1,0,1,1,1,1,1,0,1,0,1,1,0,1},
  {1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1},
  {1,1,1,1,0,1,1,1,0,1,0,1,1,1,0,1,1,1,1},
  {1,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,0,1},
  {1,0,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1},
  {1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,1},
  {1,0,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1},
  {1,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,0,1},
  {1,1,1,1,0,1,0,1,1,1,1,1,0,1,0,1,1,1,1},
  {1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1},
  {1,0,1,1,0,1,1,1,0,1,0,1,1,1,0,1,1,0,1},
  {1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1},
  {1,1,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,1,1},
  {1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1},
  {1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
 
};





void setup (){
  size (855,945);
  rows=gridmap.length;
  cols=gridmap[0].length;
  cellWidth = 45;
  cellHeight = 45;
  venstre = false;
  op = false;
  højre = false;
  ned = false;
  p = new Spiller();
  //e = new Enemy ();
}

void draw (){
  background (120);
  renderMap();
  p.update();
  //e.update();
  checkWallCollisions(p);
  //checkWallCollisions(e);
  p.display();
  //e.display();
  
} 


void keyPressed(){
  if(keyCode==65){
    venstre = true; 
  }else if (keyCode ==87){
    op = true;
  }else if (keyCode ==68){
    højre = true;
  }else if (keyCode ==83){
    ned = true;
  }
}

void keyReleased(){
  if(keyCode==65){
    venstre = false; 
  }else if (keyCode ==87){
    op = false;
  }else if (keyCode ==68){
    højre = false;
  }else if (keyCode ==83){
    ned = false;
  }
}




void renderMap(){
  for (  int i = 0; i <rows; i++){
    for ( int j =0; j <cols; j++){
      switch (gridmap[i][j]){
        case 0:
        fill(28);
        rect(j*cellWidth,i*cellHeight,cellWidth,cellHeight);
        break;
        
        case 1:
        fill(0,0,250);
         rect(j*cellWidth,i*cellHeight,cellWidth,cellHeight);
        break;
        
        
      }
    }
  }
}
