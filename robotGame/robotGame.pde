Robot robot1 = new Robot();


void setup() {
  background(255);
  size(3600, 1800);
  noStroke();
  frameRate(60);
  robot1.createRobot(0, 1000, 0, true, 0);
  
}

void keyPressed() {
  if (key == 'w') {
    robot1.moveForward();
  } else if (key == 's') {
    robot1.moveBackward();
  }
 
}

void keyReleased() {
  key = '+';
}

void draw() {
  System.out.println(key);
  background (255);
  stroke(0);
  strokeWeight(20);
  line(100, 300, 100, 1500);
  line(3500, 300, 3500, 1500);
 // x += 5;
  robot1.calculateNextPos();
 
  rect(robot1.xCoord, robot1.yCoord, 100, 100, 0);
  if (key != 'w') {
  robot1.velocity = robot1.velocity * 0.95;
   
  }

  
}