package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	res, err := http.Get("https://golang.org")
	if err != nil {
		fmt.Println("Request error: ", err)
		return
	}

	defer res.Body.Close()

	buf, err := ioutil.ReadAll(res.Body)
	if err != nil {
		fmt.Println("Read response body error: ", err)
		return
	}
	fmt.Printf("%s", buf)
}
