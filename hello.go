package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "index.html")
	})

	fmt.Println("Full Cycle Rocks!!")
	fmt.Println("🚀 Server listening on port 8080")
	http.ListenAndServe(":8080", nil)
}
