package main

import "fmt"

func main() {
	var num int
	var resto int

	fmt.Println("Digite um número:")
	fmt.Scan(&num)
	resto = num % 2

	switch resto {
		case 0:
			fmt.Println("O número é par")
		default:
			fmt.Println("O número é ímpar")
	}
}
