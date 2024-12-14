#!/usr/bin/env bash
# file: examples/test_function.sh

# Source the library with the log function
# Update the path to the actual location of the library file
# shellcheck source=../utils/adr/test-function.sh
. ../utils/adr/test-function.sh

# Test case for the log function
test_log() {
    local expected result
    expected="[$(date "+%Y-%m-%d %H:%M:%S")] [INFO] This is an INFO message"
    result=$(log INFO "This is an INFO message")

    # Assert that the result matches the expected output
    assertEquals "Log output did not match expected" "$expected" "$result"
}

# Load shUnit2
# shellcheck source=shunit2
. shunit2