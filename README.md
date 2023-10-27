
[TOC]

# Algorithm Demo Project

This project is used to exercise the algorithm by using C++.

Because git ignores some files, there is no root directory build for construction and executable files storage directory bin under the project root directory. So you need to create these 2 directories:

```shell
mkdir bin
mkdir build
```

What's more, after compilation, directory lib will be generated to store share lib created by project.

Use `cmake` to generate Makefile, and then use `make` to generate executable file named `AlgorithmDemo. The commands are as follows:

```shell
cd build
cmake ..
make

cd ../bin
./AlgorithmDemo
```
