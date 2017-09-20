float ympyranX,ympyranY;
float HALKAISIJA;
int pupuja_jaljella;

void setup(){
size(600,600);
println("Pelilaudan leveys on "+width+" ja korkeus on "+height); 
ympyranX = 300;
ympyranY = 300;
HALKAISIJA = 50;
pupuja_jaljella = 5;
}

void draw(){
  background(0,255,0);
  ellipse(ympyranX,ympyranY,HALKAISIJA,HALKAISIJA);
  println("Satunnaisluku "+random(600));
}

void mousePressed(){
 println("Painoit hiirellä");
 println("Painoit kohtaan X = "+mouseX+" Y = "+mouseY);
 if( dist(mouseX, mouseY, ympyranX,ympyranY) < 25 && pupuja_jaljella > 0) { 
    ympyranX = random(600 - 50) + 25;
    ympyranY = random(600 - 50) + 25;
    pupuja_jaljella--;
    println("Pupuja on jaljella "+pupuja_jaljella);
 }

}