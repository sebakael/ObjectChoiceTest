class Walker {
  float x1, y1;
  float prevX;
  float prevY;
  float xSpeed, ySpeed = 0;
  float accel = 50;
  //float Xaccel = 100;
  //float Yaccel = 100;
  float R = random(255);
  float G = random(255);
  float B = random(255);
  //float Xgravity1, Xgravity2, Ygravity1, Ygravity2; 
  float direction = 1;

  Walker() {
    //y1 = random(height);
    //x1 = random(width);
    x1 = width;
    y1 = height;

    prevX = x1;
    prevY = y1;
  }

  void render() {
    stroke(R, 0, B);
    //stroke(0,G,0);
    line(x1, y1, prevX, prevY);
  }

  void step() {
    prevX = x1;
    prevY = y1;



    int choice = int(random(4));

    if (choice == 0) {
      x1 = x1 + random(accel);
      //x1++;
    } else if (choice == 1) {
      x1 = x1 - random(accel);
      //x1--;
    } else if (choice == 2) {
      //y1 = -1;
      //y1++;
      y1 = y1 + random(accel);
    } else {
      //y1 = height + 1;
      //y1--;
      y1 = y1 - random(accel);
    }

    if (y1 > height) {
      y1 = 0;
      prevY = 0;
    } else if (y1 < 0) {
      y1 = height;
      prevY = height;
    }

    //if (y1 <= height/2) {
    //  ySpeed = ySpeed + (Yaccel);
    //} else {
    //  ySpeed = ySpeed - (Yaccel);
    //}
    //y1 = y1 + ySpeed;

    //if (x1 <= width/2) {
    //  xSpeed = xSpeed + (Xaccel);
    //} else {
    //  xSpeed = xSpeed - (Xaccel);
    //}
    //x1 = x1 + xSpeed;


    x1 = constrain(x1, 0, width);
    y1 = constrain(y1, 0, height);
    //xSpeed = constrain(xSpeed, 0, 50);
    //ySpeed = constrain(ySpeed, 0, 50);
    //for (int i = 0; i <= Walker.length; i++) {
    //Yaccel = Yaccel - .01;
    //Xaccel = Xaccel - .01;
    //}
  }
}
