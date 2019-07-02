float a = 0, b = 0, ca, cb;
float y = 0,zh = 1,zw;
void setup() {
  size(1200, 700);
  background(0);
  float w = width;
  float h = height;
  zw = ((w+w/3)/h)*zh;
}
void draw() {
  translate(width/3,0);
  for(float x = -width/3; x < width-width/3 && y < height; x++) {
    
    float a = map(x,-width/3,width,-zw,zw);
    float b = map(y,0,height,-zh,zh);
    float ca = a;
    float cb = b;
    float n = 0;
    while(n < 100) {
      float na = a*a-b*b;
      float nb = 2*a*b;
      a = na+ca;
      b = nb+cb;
      if(abs(a+b) > 16)
        break;
      n++;
    }
    float c = map(n,0,100,0,255);
    if(n == 100)
      stroke(0);
    else if(n > 90)
      stroke(250,250,255);
    else
      stroke(c,c,150);
    point(x,y);
  }
  y++;
  //if(y > height)
  //  save("Mandelbrot_set.bmp");
}
