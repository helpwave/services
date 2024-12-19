package hwkc

import (
	"fmt"
	"io"
	"net/http"
)

type BadResponseError struct {
	Res *http.Response
}

func (e BadResponseError) Error() string {
	var body string
	bodyBytes, err := io.ReadAll(e.Res.Body)
	if err != nil {
		body = "could not read body: " + err.Error()
	} else {
		body = string(bodyBytes)
	}

	return fmt.Sprintf(
		"bad response status: %s - %s is %d: %s",
		e.Res.Request.Method, e.Res.Request.URL.String(), e.Res.StatusCode, body,
	)
}
