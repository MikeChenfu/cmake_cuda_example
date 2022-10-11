## Libcudf Examples

This folder contains examples to demonstrate use cases with libcudf and udf cuda kernel. Running `build.sh` builds all libcudf examples.

Current examples:

- Basic: example that demonstrates reading and writing parquet with libcudf and building a custom application with CUDA.

## compile and run command
- change the `file path` for reading in `basic/src/test.cu`
- change the WORKSPACE in build.sh for compiling and running
```
bash build.sh  && ./basic/build/basic_example
```

## cmake install
```
cd cmake_dir && tar -xvf cmake-3.23.0-rc2.tar.gz
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
cd cmake-3.23.0-rc2 && ./configure
make
make install
```
