int ympyranX,ympyranY;
int HALKAISIJA;

void setup(){
size(600,600);
println("Pelilaudan leveys on "+width+" ja korkeus on "+height); 
}

void draw(){
  background(0,255,0);
}

void mousePressed(){
 println("Painoit hiirellä");
 println("Painoit kohtaan X = "+mouseX+" Y = "+mouseY);
}