int value = 0;

int x;
int y;

String [] verdes = {"verde","fría","gitana"};
float nroverde = random(0,verdes.length);
int nrov = int(nroverde);
String verde = verdes[nrov];

Table tabla;
int nro = 688;
String [] lorca = new String [nro];


void setup() {  
  fullScreen();
  frameRate(100); 
    //color de fondo inicial
  float r1 = random (0,255);
  float g1 = random (0,255);
  float b1 = random (0,255);
  background(r1,g1,b1);
  tabla = loadTable("lorca.csv");
  for (int i=0; i<nro;i++){
    lorca[i]=tabla.getString(i,0);
  }
  x = + 10;
  y = height-10;
} 


void sembrarverde (int x, int y){
  float r = random (0,100);
  float g = random (100,255);
  float b = random (0,100); //estos valores son para que salga siempre un tono de verde. 
  float tamaño = random (10,60);
 
  for(int i=0; i<86; i++) {
  textSize(tamaño);
  fill(r,g,b);
  text(lorca[i],x,y-i*tamaño);
  };
}


void draw() {

  //versos que van apareciendo en pantalla. Modo crecimiento rápido 
  float r = random (0,255);
  float g = random (0,255);
  float b = random (0,255);

  float nro1 = random(nro);
  int nroverso = int(nro1);
  String versomostrado = lorca[nroverso];
  textSize(20);
  text(versomostrado, x, y);
  fill(r, g, b);
  y = y-20;
  
  if(y <= 0) {
    x += width/5;
    y = height-10;
  }

  if(x >= width) {
   x = int (random (width));
   y = int (random (height));
 }
  
}

//el color del fondo cambia al presionar una tecla
void keyPressed() {
  float r1 = random (0,255);
  float g1 = random (0,255);
  float b1 = random (0,255);
  background(r1,g1,b1);
}


//cuando haces clic "sembrás" los poemas originales
void mousePressed() {
    sembrarverde(mouseX, mouseY);
}
