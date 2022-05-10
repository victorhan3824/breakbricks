//bricks pt 1

//Mode framework ==============================================================
int mode; 
final int INTRO = 0;
final int GAME  = 1;
final int PAUSE = 2;
final int OVER  = 3;
//game variables ==============================================================
float bx, by, bd, vx, vy, px, py, pd;

//bricks variables ============================================================
int[] brickX;
int[] brickY;
int brickd, brickN;

//non-game variables ==========================================================
boolean akey, dkey;

//color pallette ==============================================================
color black    = #001219;
color darkBlue = #1D3557;
color oceanBLU = #005F73;
color blue     = #0A9396;
color cyan     = #94D2BD;
color cream    = #E9D8A6;
color yellow   = #EE9B00;
color orange   = #CA6702;
color bloodOG  = #BB3E03;
color red      = #AE2012;
color wine     = #9B2226;
color green    = #283618;
color lightGR  = #67F720;
color white    = #F1FAEE;

//Fonts and images ============================================================
PFont themeFont;

//set up ======================================================================
void setup() {
  //bricks set up ===================================================
  brickd = 50;
  brickN = 40;
  brickX = new int[brickN];
  brickY = new int[brickN];

  int a = 0;
  while (a < brickN) {
    brickX[a] = (a%10)*100 + 50;
    brickY[a] = (a/10)*100 + 100; 
    a = a + 1;
  }

  //general set up ===================================================
  size(1000, 800);
  mode = 0;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  //game variables set up ============================================
  bx = width/2;
  by = height-100;
  bd = 20;
  px = width/2;
  py = height+50;
  pd = 200;
  vx = 0;
  vy = 2;

  //font and images set up ===========================================
  themeFont = createFont("font.ttf", 69);
}
