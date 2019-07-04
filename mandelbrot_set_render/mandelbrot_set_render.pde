float n = 100; //<>//
void setup() {
  size(1000, 1000);
  background(0);
}
void draw() {
  background(0);
  float x = -width/2, y = -height/2;
  translate(width/2, height/2);
  while (y < height/2) {
    x = -width/2;
    while (x < width/2) {
      float zx = map(x, -width/2, width/2, -2.5, 1.5), zy = map(y, -height/2, height/2, -2, 2), tx, ty, cx = zx, cy = zy;
      float c = 0; //<>//
      while (c < n) {
        tx = zx*zx-zy*zy;
        ty = 2*zx*zy;
        zx = tx+cx;
        zy = ty+cy;
        if (sqrt(zx*zx+zy*zy) > 2)
          break;
        c++;
      }
      colorMode(RGB,255);
      if (c == 0)
        stroke(20, 0, 0);
      else if (c == n)
        stroke(0);
      else {
        colorMode(HSB, 1);
        stroke(color(c/256, 1, c/(c+8)));
      }
      point(x, y);
      x++;
    }
    y++;
  }
}
