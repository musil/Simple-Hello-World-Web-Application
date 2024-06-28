// Just for testing docker container

package main

import "net/http"

func main() {
	http.HandleFunc("/", hellowordhandler)

	http.ListenAndServe(":8080", nil)
}

func hellowordhandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("<H1>Simple Hello World Web Application in Go</H1> <BR> <i>Stanislav Musil</i>"))
}
