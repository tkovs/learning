public class Rectangle {
	private Point2D X;
	private Point2D Y;

	Rectangle(Point2D X, Point2D Y) {
		this.X = X;
		this.Y = Y;
	}

	public int Height() {
		return X.getY() - Y.getY();
	}

	public int Base() {
		return X.getX() - Y.getX();
	}

	public int Area() {
		return Base() * Height();
	}

	public int Perimeter() {
		return (Base() + Height()) * 2;
	}

	public bool InsideVertical(Point2D Z) {
		if (Z.X > X.X && Z.X < Y.X)
			return true;

		return false;
	}

	public bool InsideHorizontal(Point2D Z) {
		if (Z.Y < X.Y && Z.Y > Y.Y)
			return true;

		return false;
	}

	public bool Inside(Point2D Z) {
		if (!InsideHorizontal(Z))
			return false;
		if (!InsideVertical(Z))
			return false;

		return true;
	}

	public bool Inside(Line Z) {
		if (!Inside(Z.X))
			return false;
		if (!Inside(Z.Y))
			return false;

		return true;
	}
}