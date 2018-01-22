PImage hours, minutes, seconds;



void setup () {
  size (displayWidth, displayHeight);
  hours = loadImage("hours.png");
  minutes = loadImage("minutes.png");
  seconds = loadImage("seconds.png");

}




void draw () {




  float secondsRotation=radians( -second());
  float minutesRotation=radians( minute());
  float hoursRotation=radians( hour());
  float hb=millis();
  imageMode(CENTER);

  pushMatrix();
  background (0);
  translate(width/2, height/2);
  rotate(secondsRotation*6);
  image(seconds, 0, 0, 800, 800);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotate(-minutesRotation*6);
  image(minutes, 0, 0, 661, 661);
  popMatrix();  

  pushMatrix();
  translate(width/2, height/2);
  rotate(-hoursRotation*30);
  image(hours, 0, 0, 588, 588);
  popMatrix();

  stroke (255, 1, 20); //seconds hand
  strokeWeight(3);
  line(displayWidth/2, 0.13*displayHeight, displayWidth/2, 0.1*displayHeight);

  stroke (255); //minutes hand
  strokeWeight(6);
  line(displayWidth/2, 0.21*displayHeight, displayWidth/2, 0.18*displayHeight);

  stroke (22, 1, 96); //hours hand
  strokeWeight(10);
  line(displayWidth/2, displayHeight/2, displayWidth/2, 0.28*displayHeight);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(hb%(1000*60)/(1000/60));
  text("It's my birthday", 0, 0);
  popMatrix();
 
}