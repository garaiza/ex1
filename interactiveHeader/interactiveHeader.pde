
void setup() {
  size(800, 250);
  colorMode (HSB, 360, 100, 100);
  smooth();
}

void draw() {


  if (mouseX>=0 && mouseX<=200 && mouseY>=0 && mouseY<=250) {
   background (244,24,99);//periwinkle
    stroke(360, 85, 82);// red
  } else if (mouseX>=200 && mouseX<=400 && mouseY>=0 && mouseY<=250) {
   background (174,24,99);//light blue
    stroke(300, 85, 82);// fuschia
    } else if (mouseX>=400 && mouseX<=600 && mouseY>=0 && mouseY<=250) {
    background (124,24,99);//periwinkle    
    stroke(300, 85, 82);// fuschia
    } else if (mouseX>=600 && mouseX<=800 && mouseY>=0 && mouseY<=250) {
       background (50,24,99);//periwinkle 
      stroke(60, 85, 82);// blue
  } else {
      background (10,24,99);//periwink
    stroke(271,0,100);// 
  }
  
    //This is based on the top point of the quad    
  for (int x=50; x<width; x+=100) {
    for (int y=4; y<height; y+=100) {

      // s represents the bottom point of the 
      //little quad
      float s = random(3, 35);// only for y value

      //slower frame rate
      frameRate(5);
      strokeWeight(4);

      noFill();

      quad(x, y, x+20, y+20, x, y+40, x-20, y+20);// big quad is stable

      quad(x, y, x+10, y+10, x, y+s, x-10, y+10);// little quad changes
    }
  }
}