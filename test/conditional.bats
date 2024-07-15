#!/usr/bin/env bats

SCRIPT_DIR=$(cd -- "$(dirname -- "${BATS_TEST_FILENAME}")" &>/dev/null && pwd)
source ${SCRIPT_DIR}/common


@test "prod environment does conditional task" {
    export ENV=prod
    run -$TRUE task conditional
    [ "$output" = "Running conditionally" ]
}

@test "dev environment does not tag" {
    export ENV=dev
    run -$TRUE task conditional
    [ "$output" = "Skipping in ENV 'dev'" ]
}
