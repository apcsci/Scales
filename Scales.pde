void setup() {
  size(500, 500);  
  background(126,196,255);
  noLoop(); 
}
void draw() {
  boolean shift = true;
  boolean lift = true;
  for(int y = 500; y >= -100; y-=40) {
    for(int x = 600; x >= -100; x-=25) {
      if(shift == true && lift == true) 
        scale(x+15,y+5);
      else if (shift == true)
        scale(x, y+5);
      else if (lift == true)
        scale(x+15,y);
      else
        scale(x,y);

    if(shift == true)
      shift = false;
    else
      shift = true;
      
    }  
    if (lift == true)
      lift = false;
    else 
      lift = true; 
  }

}
void scale(int x, int y) {
   int r = 4 + (int)(Math.random()*36);
   int g = 158 + (int)(Math.random()*36);
   int b = 160 + (int)(Math.random()*36);
   fill(r,g,b);
   
   triangle(x,y,x+30,y,x+15,y+15);
   bezier(x+10,y+10,x-20,y+50,x+50,y+50,x+20,y+10);
   fill(0,0,0);
   ellipse(x+10,y+30,3,3);
}
