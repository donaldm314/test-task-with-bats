#!/usr/bin/env bats

# So we can pass flags to run
bats_require_minimum_version 1.5.0

TRUE=0
FALSE=1

@test "Default environment is test" {
    run -$TRUE task
    [ "${lines[0]}" = "ENV 'test', endpoint 'testing.com'" ]
}
