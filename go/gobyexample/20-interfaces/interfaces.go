package main

import (
	"fmt"
	"math"
)

type geometry interface {
	area() float64
	perim() float64
}

type rect struct {
	width, height float64
}

type circle struct {
	radius float64
}

func (r rect) area() float64 {
	return r.width * r.height
}

func (r rect) perim() float64 {
	return r.width*2 + r.height*2
}

func (c circle) area() float64 {
	return math.Pi * c.radius * c.radius
}

func (c circle) perim() float64 {
	return 2 * math.Pi * c.radius
}

func measure(g geometry) (geometry, float64, float64) {
	return g, g.area(), g.perim()
}

func main() {
	r := rect{width: 3, height: 4}
	c := circle{radius: 5}

	fmt.Println(measure(r))
	fmt.Println(measure(c))
}
