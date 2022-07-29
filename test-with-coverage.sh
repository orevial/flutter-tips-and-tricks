#!/bin/bash

## Prepare coverage folder and JUnit report lib
mkdir -p coverage/

## Run tests with coverage and JUnit report

flutter test --machine --coverage coverage/

genhtml -o coverage/ coverage/lcov.info

## Generate coverage report
lcov --remove coverage/lcov.info \
  "lib/main.dart" \
-o coverage/lcov_cleaned.info
genhtml -o coverage/ coverage/lcov_cleaned.info
