package test

import (
	"context"
	"io"
	"strings"
	"testing"
)

func TestAdrTools(t *testing.T) {
	ctx := context.Background()
	container, err := SetUpUbuntuContainer(ctx)
	if err != nil {
		t.Fatal(err)
	}
	defer container.Terminate(ctx)

	cmd := []string{"echo", "hello"}
	exitCode, reader, err := container.Exec(ctx, cmd)
	if err != nil {
		t.Fatal(err)
	}

	buf := new(strings.Builder)
	_, err = io.Copy(buf, reader)
	if err != nil {
		t.Fatal(err)
	}

	// See the logs from the command execution.
	t.Log(exitCode)
	t.Log(buf.String())
}
