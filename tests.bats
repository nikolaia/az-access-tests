#!/usr/bin/env bats

@test "subscription-id is correct" {
  run az account show --query id
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = '"354225c6-6d3d-4841-8985-47acf630581a"' ]
}

@test "ensure correct owners on subscription" {
  run az role assignment list --role Owner --query '[]."principalName"'
  [ "$status" -eq 0 ]
  [ "$output" = '[
  "admin@yourorg.onmicrosoft.com"
]' ]
}