package main

import "fmt"

func main() {
	fmt.Println("what")
	number := 5

	huh := Goof(number)
	fmt.Println(huh)
}

func Goof(int) int {
	thing := 5
	bung := thing * 2
	hung := bung * 2
	return hung
}
