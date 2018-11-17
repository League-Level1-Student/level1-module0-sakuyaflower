import org.jointheleague.graphical.robot.Robot;

public class Houses {
	 static Robot bob = new Robot();
	public static void main(String[] args) {
	bob.setSpeed(20);
	bob.penDown();
	bob.setX(50);
	bob.setY(550);	
	drawhouse("small","red");
	drawhouse("medium","black");
	drawhouse("large","purple");
	drawhouse("medium","black");
	drawhouse("small","red");
	drawhouse("medium","black");
	drawhouse("large","purple");
	drawhouse("medium","black");
	drawhouse("small","red");
	drawhouse("medium","black");
}
static void drawhouse(String height, String color) {
	int r = 7;
	if(height.equals("small")) {
		r = 60;
	}
	else if (height.equals("medium")){
		r = 120;
	}
	else if(height.equals("large")){
		r = 250;
	}
	if(color.equals("red")) {
		bob.setPenColor(190,0,0);
	}
	else if (color.equals("black")){
		bob.setPenColor(0,0,0);
	}
	else if(color.equals("purple")){
		bob.setPenColor(130,0,130);
	}

	bob.turn(90);
	bob.move(20);
	bob.turn(-90);
	bob.move(r);
if(height.equals("large")) {
	drawFlatRoof();
}
else{
	drawPointyRoof();
}
	bob.move(r);
	bob.turn(-180);
}
static void drawPointyRoof() {
	bob.turn(45);
	bob.move(20);
	bob.turn(90);
	bob.move(20);
	bob.turn(45);

}
static void drawFlatRoof() {
	bob.turn(90);
	bob.move(20);
	bob.turn(90);
}
}
