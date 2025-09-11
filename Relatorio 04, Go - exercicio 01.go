package main

import "fmt"

func classificar_numero(num int) string {
	if num > 0 {
		return "positivo"
	} else if num < 0 {
		return "negativo"
	} else {
		return "zero"
	}
}

func main() {
	var num int
	fmt.Println("Digite um número:")
	fmt.Scan(&num)

	fmt.Print("O numero ", num, " é ", classificar_numero(num))
}
