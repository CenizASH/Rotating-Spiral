final int NUM_LINES = 500;  //How many lines are drawn to make the spiral
float maxRadius;            //Distance to the corners of the window (needs width/height)
final int NUM_TURNS = 10;   //How many times around to get to that size
float startAngle = 0;       //The angle to use to start the spiral
final float START_ANGLE_CHANGE = 0.0002; //Change in startAngle each frame

void setup() {
  size(500, 500);
  maxRadius = sqrt(sq(width/2)+sq(height/2)); //Distance to the corners from the centre
}

void draw() {
  background(255);
  float X1 = width/2;
  float Y1 = height/2;

  for (int i=0; i<NUM_LINES; i++) {
    float angle = startAngle+i/(float)(NUM_LINES-1)*(NUM_TURNS)*TWO_PI;
    float distance = i/(float)(NUM_LINES-1)*maxRadius;

    float X2 = (width/2)+distance*cos(angle);
    float Y2 = (height/2)+distance*sin(angle);

    line(X1, Y1, X2, Y2);

    X1 = X2;
    Y1 = Y2;
    startAngle += START_ANGLE_CHANGE;
  }
}
