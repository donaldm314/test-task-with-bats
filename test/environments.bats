#!/usr/bin/env bats

SCRIPT_DIR=$(cd -- "$(dirname -- "${BATS_TEST_FILENAME}")" &>/dev/null && pwd)
source ${SCRIPT_DIR}/common


@test "prod environment uses production.com" {
    export ENV=prod
    run -$TRUE task
    [ "$output" = "ENV 'prod', endpoint 'production.com'" ]
}

@test "test environment uses testing.com" {
    export ENV=test
    run -$TRUE task
    [ "$output" = "ENV 'test', endpoint 'testing.com'" ]
}