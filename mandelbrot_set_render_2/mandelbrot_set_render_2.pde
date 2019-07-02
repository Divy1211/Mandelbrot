void setup() {
  size(600, 600);
  background(0);
}
int n = 0;
void draw() {
  background(0);
  float x = -width/2, y = -height/2;
  translate(width/2, height/2);
  while (y < height/2) {
    x = -width/2;
    while (x < width/2) {
      float zx = map(x, -width/2, width/2, -2, 2), zy = map(y, -height/2, height/2, -2, 2), tx, ty, cx = zx, cy = zy;
      int c = 0;
      while (c < n) {
        tx = zx*zx-zy*zy;
        ty = 2*zx*zy;
        zx = tx+cx;
        zy = ty+cy;
        if (sqrt(zx*zx+zy*zy) > 2)
          break;
        c++;
      }
      if (sqrt(zx*zx+zy*zy) > 2)
        stroke(#A59B9C); //grey
      if(c%4 == 0 && sqrt(cx*cx+cy*cy) < 2)
        stroke(#FF3B4C); //red
      else if (c%4 == 1)
        stroke(#48F752); // green
      else if (c%4 == 2)
        stroke(#F0E84D); //yellow
      else if (c%4 == 3)
        stroke(#48F7DE); //cyan
      if (c == n && sqrt(zx*zx+zy*zy) < 2)
        stroke(0);
      point(x, y);
      x++;
    }
    y++;
  }
}
void mousePressed() {
  n++;
}
