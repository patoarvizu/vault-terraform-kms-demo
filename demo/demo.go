package main

import (
	"fmt"

	vaultapi "github.com/hashicorp/vault/api"
)

func main() {
	vaultClient, _ := vaultapi.NewClient(vaultapi.DefaultConfig())
	r, _ := vaultClient.Logical().Read("secret/service-a")

	fmt.Println(r.Data["password"].(string))
	fmt.Println(r.Data["token"].(string))
}
