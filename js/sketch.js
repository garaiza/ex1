console.log("hello world");

function setup() {
  var myCanvas=createCanvas(800,250);
    //link to my id mySketch from header tag
    myCanvas.parent('mySketch')
  colorMode (HSB, 360, 100, 100);
  smooth();
}

function draw() {
    background (255,0,99);//(244,24,99);//
    stroke(mouseX, mouseY, 82);// color varies with x and y

  //This is based on the top point of the quad    
  for (var x=50; x<width; x+=100) {
    for (var y=4; y<height; y+=100) {

      // s represents the bottom point of the 
      //little quad
      var s = random(3, 35);// only for y value

      //slower frame rate
      frameRate(3);
      strokeWeight(4);

      noFill();

      quad(x, y, x+20, y+20, x, y+40, x-20, y+20);// big quad is stable

      quad(x, y, x+10, y+10, x, y+s, x-10, y+10);// little quad changes
    }
  }
}


 