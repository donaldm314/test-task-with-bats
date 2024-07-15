#!/usr/bin/env bats

SCRIPT_DIR=$(cd -- "$(dirname -- "${BATS_TEST_FILENAME}")" &>/dev/null && pwd)
source ${SCRIPT_DIR}/common

@test "Default environment is test" {
    run -$TRUE task
    [ "$output" = "ENV 'test', endpoint 'testing.com'" ]
}

