// Test program for the PEmbroider library for Processing:
// Filling a pre-loaded SVG image

import processing.embroider.*;
PEmbroiderGraphics E;

PShape mySvgImage;

void setup() {
  size(1000, 1000); 
  noLoop(); 
  
  E = new PEmbroiderGraphics(this, width, height);
  String outputFilePath = sketchPath("noelle_svg.pes");
  E.setPath(outputFilePath); 
  
  PImage mySvgImage = loadImage("apron-embroidery.png");
  mySvgImage.resize(410, 410);
  E.fill(0,0,0);
  //E.stroke(0,0,0); 
  //E.strokeWeight(1);
  E.hatchSpacing(4); 
  E.setStitch(0, 30, 0);
  E.hatchAngle(0);
  
  E.hatchMode(E.PARALLEL);
  E.image(mySvgImage,1,1);
  
  //-----------------------
  E.optimize(); // slow, but good and very important
  E.visualize();
  E.endDraw(); // write out the file
  //save("PEmbroider_svg_image.png"); //saves a png of design from canvas
}


//--------------------------------------------
void draw() {
  ;
}
