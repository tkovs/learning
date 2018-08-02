package main

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

func foo(id int, seconds time.Duration, wg *sync.WaitGroup) {
	defer wg.Done()

	time.Sleep(seconds)
	fmt.Println("Task", id, "done.")
}

func main() {
	var wg sync.WaitGroup
	var values = []int{
		1, 2, 3, 4, 5,
		6, 7, 8, 9, 10,
	}

	for _, v := range values {
		duration := (rand.Float64() * 10) + 0
		wg.Add(1)
		go foo(v, time.Duration(duration)*time.Second, &wg)
	}

	wg.Wait()
}
