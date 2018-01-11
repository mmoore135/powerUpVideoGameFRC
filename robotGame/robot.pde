class Robot {
  float xCoord;
  float yCoord;
  float angleValue;
  boolean team;
  float velocity;

  void createRobot(float x, float y, float angle, boolean setTeam, float moveSpeed) {
    this.xCoord = x;
    this.yCoord = y;
    this.angleValue = angle;
    this.team = setTeam;
    this.velocity = moveSpeed;
  } 

  void calculateNextPos()
  {
     this.xCoord += this.velocity;
  } 
  
  void moveForward() {
    if (this.velocity < 1) {
      this.velocity = 1;
    }
    
    if (this.velocity < 20) {
      this.velocity = this.velocity * 1.06;
    }
    
  }
  
  void moveBackward() {
    
  }
}