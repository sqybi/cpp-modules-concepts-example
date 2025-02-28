#/usr/bin/env bash

set -ex

GCC_12_EXEC="/path/to/g++-12"

$GCC_12_EXEC --version

$GCC_12_EXEC -std=c++20 -fmodules-ts -x c++-system-header iostream -x c++-system-header concepts
$GCC_12_EXEC -std=c++20 -fmodules-ts math.cc main.cc -o main
