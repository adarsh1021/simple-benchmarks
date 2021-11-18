package main

import (
	"fmt"
	"net/http"
)

func helloWorld(w http.ResponseWriter, req *http.Request) {

	fmt.Fprintf(w, "hello\n")
}

func main() {

	http.HandleFunc("/hello-world", helloWorld)

	http.ListenAndServe(":5000", nil)
}
