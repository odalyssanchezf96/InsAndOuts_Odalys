PImage sky;

void setup(){
  size(1080, 720);
  sky = loadImage("sky.jpg");
  //frameRate(1);
}

void draw(){
  println(mouseX, mouseY);
  
  image(sky, 0, 0, 1080, 550);
  //int m = millis();
  fill(255, 225, 160);
  rect(0, 550, 1080, 750);

  fill(252, 224, 0);  
  ellipse(200, 200, 300, 300);

  
}
