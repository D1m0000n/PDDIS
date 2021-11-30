package main

import (
	"fmt"
	"log"
	"net/http"
	"strings"
)

func main() {
	var cache []string

	http.HandleFunc("/add", func(w http.ResponseWriter, r *http.Request) {
		cache = append(cache, r.URL.Query()["text"]...)
		fmt.Fprintf(w, "Successfully logged: %s", strings.Join(r.URL.Query()["text"], ", "))
	})

	http.HandleFunc("/history", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, strings.Join(cache, ", "))
	})

	log.Fatal(http.ListenAndServe(":8081", nil))
}
