var rot;
var img;


function setup(){
 rot = PI;
  createCanvas(400,400);
img = loadImage("data/as_ski_wiley01_576.jpg");

rot = rot+2;
}
function draw() {
    
if (mouseIsPressed == true){
rotate();
   image(img, 0,0);
    
copy(round(random(400)),20,round(random(400)),70, 0,0,200,150);
  }

}

function rotate(){
    rot = rot + PI;
  translate(width/2,height/2);
  if (mousePressed){ 
rotate(rot);
      
  }
}
