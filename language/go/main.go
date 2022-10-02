package main

import (
    "net/http"
    "fmt"
)

type HandlerFun func(http.ResponseWriter, *http.Request)

func (f HandlerFun) ServeHTTP(w http.ResponseWriter, r *http.Request) {
    fmt.Println("b")
	f(w, r) // 
}

func main() {
    var resq http.ResponseWriter = nil
    var res *http.Request = nil

	fun := HandlerFun(hellohandler)
	fun.ServeHTTP(resq , res)
}

func hellohandler(w http.ResponseWriter, r *http.Request) {
    fmt.Println("a")
}
