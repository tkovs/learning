package main

import (
	"fmt"
	"time"
)

func worker(channel chan int, value int) {
	fmt.Println("Working...")
	time.Sleep(3 * time.Second)

	channel <- value * 2
	fmt.Println("Done!")
}

func main() {
	channel := make(chan int, 1)
	go worker(channel, 3)

	fmt.Println("Before done")
	fmt.Println("Result:", <-channel)
	fmt.Println("After done")
	fmt.Scanln()
}
