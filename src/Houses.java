import org.jointheleague.graphical.robot.Robot;

public class Houses {
	 static Robot bob = new Robot();
	public static void main(String[] args) {
	bob.setSpeed(20);
	bob.penDown();
	bob.setX(50);
	bob.setY(550);	
	drawhouse(51);
	drawhouse(47);
	drawhouse(75);
	drawhouse(51);
	drawhouse(62);
	drawhouse(78);
	drawhouse(63);
	drawhouse(443);
	drawhouse(57);
	drawhouse(37);
}
static void drawhouse(String height) {
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
	bob.setRandomPenColor();
	bob.turn(90);
	bob.move(20);
	bob.turn(-90);
	bob.move(height);
	bob.turn(90);
	bob.move(20);
	bob.turn(90);
	bob.move(height);
	bob.turn(-180);
}
}
