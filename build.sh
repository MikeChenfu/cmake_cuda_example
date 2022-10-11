#!/bin/bash

# Copyright (c) 2021, NVIDIA CORPORATION.

# libcudf examples build script

# Parallelism control
PARALLEL_LEVEL=${PARALLEL_LEVEL:-4}

# Root of examples
WORKSPACE=/home/cuopt_user/raft
EXAMPLES_DIR=${WORKSPACE}/c_pq_io
CC=/usr/bin/gcc
CXX=/usr/bin/g++

################################################################################
# Add individual libcudf examples build scripts down below

# Basic example
BASIC_EXAMPLE_DIR=${EXAMPLES_DIR}/basic
BASIC_EXAMPLE_BUILD_DIR=${BASIC_EXAMPLE_DIR}/build

# Configure
cmake -S ${BASIC_EXAMPLE_DIR} -B ${BASIC_EXAMPLE_BUILD_DIR} -Dcudf_ROOT="${LIB_BUILD_DIR}"
# Build
cmake --build ${BASIC_EXAMPLE_BUILD_DIR} -j${PARALLEL_LEVEL}
