package test

import (
	"context"

	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"
)

func SetUpUbuntuContainer(ctx context.Context) (testcontainers.Container, error) {
	req := testcontainers.ContainerRequest{
		Image:        "ubuntu:24.04",
		Cmd:          []string{"sleep", "infinity"},
		ExposedPorts: []string{},
		WaitingFor:   wait.ForLog(""),
	}

	return testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
}
