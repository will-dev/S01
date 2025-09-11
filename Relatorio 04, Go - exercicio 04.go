package main

import "fmt"

func verificarLogin(usuario string, senha string) bool {
	if usuario == "senha" && senha == "admin" {
		return true
	}
	return false
}

func main() {
	var senha string
	var usuario string
	acesso := false

	for acesso == false{
		fmt.Print("Digite o usuario: ")
		fmt.Scan(&usuario)
		fmt.Print("Digite a senha: ")
		fmt.Scan(&senha)
		acesso = verificarLogin(usuario, senha)
		if acesso == false{
			fmt.Println("Usuario ou senha invalidos")}
		}
	fmt.Println("Acesso permitido")
}
