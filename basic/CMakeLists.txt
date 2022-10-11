cmake_minimum_required(VERSION 3.18)

project(basic_example VERSION 0.0.1 LANGUAGES CXX CUDA)

set(CPM_DOWNLOAD_VERSION v0.32.2)
file(DOWNLOAD https://github.com/cpm-cmake/CPM.cmake/releases/download/${CPM_DOWNLOAD_VERSION}/get_cpm.cmake ${CMAKE_BINARY_DIR}/cmake/get_cpm.cmake)
include(${CMAKE_BINARY_DIR}/cmake/get_cpm.cmake)

find_package(raft COMPONENTS nn distance)
# Configure your project here
add_executable(basic_example  src/test.cu)
target_compile_options(basic_example PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:--expt-extended-lambda --expt-relaxed-constexpr>)
target_link_libraries(basic_example PRIVATE raft::raft)
target_compile_features(basic_example PRIVATE cxx_std_17)
