import gifAnimation.*;
GifMaker gifExport;

Point[] points = new Point[100];

void setup () {
  //frameRate(100);
  size (500, 500);
  for(int i = 0; i < points.length; i++) {
    points[i] = new Point();
  }
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
}


void draw () {
  background(0);
  for(int i = 0; i < points.length; i++) {
    points[i].update();
    points[i].show();
  }
  if(frameCount % 2 == 0 && frameCount < 121) {
    gifExport.setDelay(0);
    gifExport.addFrame();
  }
  if(frameCount > 121) gifExport.finish();
}