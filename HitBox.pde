void checkWallCollisions(Spiller s){
  String collisionSide = "none";
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < cols; j++){
      if (gridmap[i][j]== 1){
        //distance on x-axis
        int distX = floor((s.x + s.w/2)-(j*cellWidth + cellWidth/2));
        //distance on y-axis
         int distY = floor((s.y + s.h/2)-(i*cellHeight + cellHeight/2));
         //combined halfs
         int combinedHalfW = floor(s.w/2 + cellWidth/2);
         int combinedHalfH = floor(s.h/2 + cellHeight/2);
         //check for x overlap
         if(abs(distX) < combinedHalfW){
           //check for y overlap
           if(abs(distY) < combinedHalfH){
             //calculate actual overlaps
             int overlapX = combinedHalfW - abs(distX);
             int overlapY = combinedHalfH - abs(distY);
             //look for smallest overlap
             if(overlapX >= overlapY){
               //correct y position
               if(distY > 0){
                 collisionSide = "Top";
                 s.y += overlapY;
               }else{
                 collisionSide = "BOTTOM";
                 s.y -= overlapY;
               }//end y corrections
             }else{
               // correct x position
               if (distX > 0){
                 collisionSide = "LEFT";
                 s.x += overlapX;
               }else{
                 collisionSide = "RIGHT";
                 s.x -= overlapX;
               }
             }//end overlap adjustments
             println(collisionSide);
          }//end y overlap
        }// end x overlap
      }// end tilemap
    }//end cols
  }//end rows
}//end function

/*void checkWallCollisions(Enemy s){
  String collisionSide = "none";
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < cols; j++){
      if (gridmap[i][j]== 1){
        //distance on x-axis
        int distX = floor((s.x + s.w/2)-(j*cellWidth + cellWidth/2));
        //distance on y-axis
         int distY = floor((s.y + s.h/2)-(i*cellHeight + cellHeight/2));
         //combined halfs
         int combinedHalfW = floor(s.w/2 + cellWidth/2);
         int combinedHalfH = floor(s.h/2 + cellHeight/2);
         //check for x overlap
         if(abs(distX) < combinedHalfW){
           //check for y overlap
           if(abs(distY) < combinedHalfH){
             //calculate actual overlaps
             int overlapX = combinedHalfW - abs(distX);
             int overlapY = combinedHalfH - abs(distY);
             //look for smallest overlap
             if(overlapX >= overlapY){
               //correct y position
               if(distY > 0){
                 collisionSide = "Top";
                 s.y += overlapY;
               }else{
                 collisionSide = "BOTTOM";
                 s.y -= overlapY;
               }//end y corrections
             }else{
               // correct x position
               if (distX > 0){
                 collisionSide = "LEFT";
                 s.x += overlapX;
               }else{
                 collisionSide = "RIGHT";
                 s.x -= overlapX;
               }
             }//end overlap adjustments
             println(collisionSide);
          }//end y overlap
        }// end x overlap
      }// end tilemap
    }//end cols
  }//end rows
}//end function
*/
