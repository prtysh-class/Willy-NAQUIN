void setup () {
  size (800,800);
//  background (220,1,96);
  frameRate (3);
}

void draw () {
 for(int i=0 ; i<width ;  i++) {
   float x = random (400,800);
   
   if (x < 500){
    stroke(0);
     line (i, 0, i, height);
     
     stroke(255);
     line (i, random(600), i, height);
   }
 }
}