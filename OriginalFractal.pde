PImage yup;
int limit = 100;
int t = 0;

public void setup() {
  background(167);
  size(700, 700);
  yup = loadImage("yuup.png");
}

public void draw() {
  background(limit/2, limit/2, limit/2);
  if (t < 120)
    t++;
  limit = (int)(500*Math.abs(Math.sin(t/20)));
  drawPeak(350, 350, 675, limit);
}

public void drawPeak(int x, int y, int len, int small) {
  if (len <= small) {
    image(yup, x-len/2, y-len/2, len, len);
  } else {
    drawPeak(x, y-len/4, len/2, small);
    drawPeak(x-len/4, y+len/4, len/2,small);
    drawPeak(x+len/4, y+len/4, len/2,small);
  }
}



