float timestep;
int c;
float velocity, angle;
int rn, rn2;
int rd,gn,bl;
int a, e, i, o, u;
int Color;
float s;

float X[], Y[], VX[], VY[], AX[], AY[];
int n;
int RED[], GREEN[], BLUE[];
int maximum;
void setup ()
{
  int i;  
  size(2000, 1000);
  background(0,0,30);
  
  n = 0;
  s = 0;
  c = 150;
  maximum = 1000000;
  X = new float[maximum];
  Y = new float[maximum];
  VX = new float[maximum];
  VY = new float[maximum];
  AX = new float[maximum];
  AY = new float[maximum];
  RED = new int[maximum];
  GREEN = new int[maximum];
  BLUE = new int[maximum];

  timestep = 0.1;
  
  
}

void draw ()
{ 
  int i;
  rn = int(random(180));
  background(0,0,0);
  
  Color = int(random(10));
  
  if (Color <= 1) {
    rd = 30;
    gn = 30;
    bl = 200;
  } 
  if ((Color <= 2) && (Color > 1)) {
    rd = 180;
    gn = 10;
    bl = 180;
  } 
  if ((Color <= 3) && (Color > 2)) {
    rd = 220;
    gn = 10;
    bl = 10;
  } 
  if ((Color <= 4) && (Color > 3)) {
    rd = 195;
    gn = 160;
    bl = 10;
  } 
  if ((Color <= 5) && (Color > 4)) {
    rd = 195;
    gn = 120;
    bl = 10;
  } 
  if ((Color <= 6) && (Color > 5)) {
    rd = 20;
    gn = 120;
    bl = 10;
  } 
    if ((Color <= 7) && (Color > 6)) {
    rd = 95;
    gn = 0;
    bl = 170;
  } 
    if ((Color <= 8) && (Color > 7)) {
    rd = 190;
    gn = 10;
    bl = 140;
  } 
    if ((Color <= 9) && (Color > 8)) {
    rd = 230;
    gn = 60;
    bl = 10;
  } 
    if ((Color <= 10) && (Color > 9)) {
    rd = 200;
    gn = 130;
    bl = 30;
  } 
  

  for (i = 0; i < n; i = i + 1)
  {
    fill(RED[i], GREEN[i], BLUE[i]);
    ellipse(X[i], height - Y[i], int(random(5)+2),int(random(5)+2));
  

    X[i] = X[i] + (timestep * VX[i]);
    Y[i] = Y[i] + (timestep * VY[i]);
    VX[i] = VX[i] + (timestep * AX[i]);
    VY[i] = VY[i] + (timestep * AY[i]);
    
  }
}

void mousePressed ()
{
  int i;
  ++c;
  if (n < maximum - c) {
    for (i = 0; i < c; i = i + 1) {
      X[n+i] = mouseX;
      Y[n+i] = height-mouseY;
      velocity = random(20 + (4*s));
      angle = random(360);
      VX[n+i] = velocity * cos(angle * PI / 180);
      VY[n+i] = velocity * sin(angle * PI / 180);
      AX[n+i] = 0;
      AY[n+i] = -7.4 - s;  
      RED[n+i] = int(random(100)) + rd - 40;
      GREEN[n+i] = int(random(100)) + gn - 40;
      BLUE[n+i] = int(random(100)) + bl - 40;
     
    }
    n = n + rn + 25; 
    s = s + .18;
  }
}


