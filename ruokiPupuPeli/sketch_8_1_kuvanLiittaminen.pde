
// Määrittelee muuttujia
// Varaa RAM-muistia
float ympyranX,ympyranY;
float HALKAISIJA;
int pupuja_jaljella;
PImage pupu;  // ALUSTETAAN KUVAMUUTTUJA

// setup-funktio suoritetaan kerran ohjelman alkaessa
void setup(){
size(600,600);
println("Pelilaudan leveys on "+width+" ja korkeus on "+height); 
ympyranX = 300;
ympyranY = 300;
HALKAISIJA = 50;
pupuja_jaljella = 3;
pupu = loadImage("Rabbit.png"); // LADATAAN KUVA
pupu.resize(50,50); // PIENENNETÄÄN KUVAA
}


// draw-funktio suoritetaan aina uudestaan ja uudestaam
void draw(){
    background(0,255,0);
    textSize(30);
    text("Pupuja jäljellä : "+pupuja_jaljella, 30,30);
    // Tähän tulee pupun tulostava koodi
    image(pupu,ympyranX,ympyranY); // TULOSTETAAN KUVA
    ellipse(ympyranX,ympyranY,5,5); // tulostaa pelisymbolin
  if( pupuja_jaljella == 0 ) {
    background(125,255,125);
    textSize(40);
    text("Aikaa sinulta kului : "+millis(), 10,height/2);
    println("Loppuivat");
    noLoop();
  }
}


// Tämä funktio suoritetaan, jos hiirtä painetaan
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
       pupuja_jaljella = 3;
    }
    println("Pupuja on jaljella "+pupuja_jaljella);
 }
}