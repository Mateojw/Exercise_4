int rot;
PImage img;


void setup(){
 
  size(400,400);
img = loadImage("as_ski_wiley01_576.jpg");

rot = rot+2;
}
void draw() {
if (mousePressed == false){
rgbpixelcolor ();
}
else {
rotate();
copy(round(random(400)),20,round(random(400)),70, 0,0,200,150);
  }

}



void rotate(){
    rot = rot + 2;
  translate(width/2,height/2);
  if (mousePressed == true){ 
rotate(rot);
  }
}
void rgbpixelcolor (){
  loadPixels();
  img.loadPixels();
 
  for(int y = 0; y < height; y++){
  for ( int x = 0; x < width; x++){

    int loc = x + y * width;
    float r = red (img.pixels[loc]);
    float g = green (img.pixels[loc]);
    float b = blue (img.pixels[loc]);


   
  
  pixels[loc] = color(r+mouseX, g+mouseY, b);

  }
  }
  
updatePixels();
}