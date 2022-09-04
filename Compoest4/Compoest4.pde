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
  frameRate(10); 
    //color de fondo inicial
  float r1 = random (0,255);
  float g1 = random (0,255);
  float b1 = random (0,255);
  background(r1,g1,b1);
  tabla = loadTable("lorca.csv");
  for (int i=0; i<nro;i++){
    lorca[i]=tabla.getString(i,0);
  }
  x = (width/2)-100;
  y = height-10;
} 

int vuelveaempezar(){
if (y==200){
x+=100;}
  return (x);
}

void draw() {
//hacer que las unidades sean estrofas enteras. Modo brote 
//for(int i=0; i<verso.length; i++) {
//  textSize(40);
//  fill(0,143,57);
//  text(verso[i],x,y+i*40);
//  }
vuelveaempezar();
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
  
  
}

//el color del fondo cambia al presionar una tecla
void keyPressed() {
  float r1 = random (0,255);
  float g1 = random (0,255);
  float b1 = random (0,255);
  background(r1,g1,b1);
}
