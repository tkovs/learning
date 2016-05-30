public class Line {
	private Point2D X;
	private Point2D Y;

	Line(Point2D X, Point2D Y) {
		this.X = X;
		this.Y = Y;
	}

	public Point2D setX(Point2D X) { this.X = X; }
	public Point2D setY(Point2D Y) { this.Y = Y; }

	public Point2D getX() { return X; }
	public Point2D getY() { return Y; }
}