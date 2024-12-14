#!/usr/bin/env bash
# file: examples/test_equality.sh
 
# Reference for test practices: https://github.com/kward/log4sh/

oneTimeSetUp() {
  echo "One time set up..."
}

setUp() {
  echo "Test set up..."
}

testEquality() {
  assertEquals 1 1
}

# testFailEquality() {
#   assertEquals 1 2
# }

tearDown() {
  echo "Test tear down..."
}

oneTimeTearDown() {
  echo "One time tear down..."
}

# Load shUnit2
# shellcheck source=shunit2
. shunit2