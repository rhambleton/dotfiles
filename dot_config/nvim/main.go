package main

import "fmt"

func main() {
	fmt.Println("what")
}

func Goof(num int) int {
	fmt.Println(num)
	num = num * 2 * 2
	return num + 5
}
