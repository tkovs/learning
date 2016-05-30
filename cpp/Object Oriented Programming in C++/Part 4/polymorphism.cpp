#include <iostream>

class Shape
{
	public:
		virtual float getArea() const = 0;
};

class Rectangle : public Shape
{
	private:
		float width;
		float height;

	public:
		Rectangle(float _width, float _height) : width(_width), height(_height) { }
		virtual float getArea() const { return width * height; }
};

class Circle : public Shape
{
	private:
		float radius;

	public:
		Circle(float _radius) : radius(_radius) { }
		virtual float getArea() const { return 3.14159f * radius * radius; }
};

void printArea(const Shape& shape)
{
	std::cout << "Area: " << shape.getArea() << std::endl;
}

int main(void)
{
	Rectangle r(2, 6);
	Circle c(5);
	Shape* shape = &c;

	printArea(r);
	printArea(c);
	printArea(*shape);
}