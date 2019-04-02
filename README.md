# multi-stage-docker
Sample multistage docker build

### build the image

```code

docker build -t multi-stage .

```

### Tests

#### GoogleContainerTools/Container Structure Tests

The Container Structure Tests provide a powerful framework to validate the structure of a container image. These tests can be used to check the output of commands in an image, as well as verify metadata and contents of the filesystem.

Tests can be run either through a standalone binary, or through a Docker image.

In this example, using standalone binary


**Installation**

https://github.com/GoogleContainerTools/container-structure-test#installation


container-structure-test test --image multi-stage --config tests/config.yaml -v info


```code

$ container-structure-test test --image multi-stage --config tests/config.yaml

====================================
====== Test file: config.yaml ======
====================================
=== RUN: File Existence Test: JavaTruststoreExists
--- PASS


=====================================
============== RESULTS ==============
=====================================
Passes:      1
Failures:    0
Total tests: 1

PASS

```
