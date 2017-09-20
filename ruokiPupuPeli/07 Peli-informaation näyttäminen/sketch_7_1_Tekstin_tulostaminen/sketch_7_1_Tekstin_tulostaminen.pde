float ympyranX,ympyranY;
float HALKAISIJA;
int pupuja_jaljella;

void setup(){
size(600,600);
println("Pelilaudan leveys on "+width+" ja korkeus on "+height); 
ympyranX = 300;
ympyranY = 300;
HALKAISIJA = 50;
pupuja_jaljella = 3;
}

void draw(){
    background(0,255,0);
    
    textSize(30);
    text("Pupuja jäljellä : "+pupuja_jaljella, 30,30);
  
    ellipse(ympyranX,ympyranY,HALKAISIJA,HALKAISIJA);

  if( pupuja_jaljella == 0 ) {
    background(125,255,125);
    textSize(40);
    text("Aikaa sinulta kului : "+millis(), 10,height/2);
    println("Loppuivat");
    noLoop();
  }

}

void mousePressed(){
 println("Painoit hiirellä");
 println("Painoit kohtaan X = "+mouseX+" Y = "+mouseY);
 if( dist(mouseX, mouseY, ympyranX,ympyranY) < 25 && pupuja_jaljella > 0) { 
   pupuja_jaljella--; 
   if( pupuja_jaljella > 0 ) {
      ympyranX = random(600 - 50) + 25;
      ympyranY = random(600 - 50) + 25;
    }
    else {
       println("Puput loppuivat"); 
    }
    println("Pupuja on jaljella "+pupuja_jaljella);
 }

}