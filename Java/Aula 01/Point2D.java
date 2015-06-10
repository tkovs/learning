public class Point2D {
	private int X;
	private int Y;

	public int getX() { return X; }
	public int getY() { return Y; }

	public void setX(int X) { this.X = X; }
	public void setX(int Y) { this.Y = Y; }

	Point2D(int X, int Y) {
		this.X = X;
		this.Y = Y;
	}

	Point2D() {
		this.X = 0;
		this.Y = 0;
	}
}