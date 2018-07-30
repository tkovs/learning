package main

import "fmt"

type person struct {
	name string
	age  int
}

func main() {
	fmt.Println(person{"Bob", 20})
	fmt.Println(person{name: "Alice", age: 30})
	fmt.Println(person{age: 21, name: "John"})
	fmt.Println(person{name: "Prince"})
	fmt.Println(person{age: 62})
	fmt.Println(&person{age: 41, name: "Ann"})

	var s person = person{name: "Joao", age: 20}
	fmt.Println("Name:", s.name)
	fmt.Println("Age:", s.age)

	// You can also use dots with struct pointers - the pointers are automatically dereferenced.
	var sp *person = &s
	fmt.Println("Name again:", sp.name)

	sp.age = 21
	fmt.Println("Changed age:", s.age)
}
