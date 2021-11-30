package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	e.GET("/", func(c echo.Context) error {
		_, err := http.Get("http://history:8081/add?text=" + c.QueryString())
		if err != nil {
			return err
		}
		return c.String(http.StatusOK, c.QueryString())
	})
	e.Logger.Fatal(e.Start(":5432"))
}
