int ympyranX,ympyranY;
int HALKAISIJA;

void setup(){
size(600,600);
println("Pelilaudan leveys on "+width+" ja korkeus on "+height); 
ympyranX = 300;
ympyranY = 300;
HALKAISIJA = 50;
}

void draw(){
  background(0,255,0);
  ellipse(ympyranX,ympyranY,HALKAISIJA,HALKAISIJA);
}

void mousePressed(){
 println("Painoit hiirellä");
 println("Painoit kohtaan X = "+mouseX+" Y = "+mouseY);
 if( dist(mouseX, mouseY, 300,300) < 25 ) {
    println("Osuit ympyrään"); 
 }
 else {
    println("Et osunut ympyrään"); 
 }
}