#!/bin/bash

sudo bazel build --config=opt //tensorflow/tools/pip_package:build_pip_package

sudo bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

sudo pip install --upgrade --no-deps --force-reinstall /tmp/tensorflow_pkg/tensorflow-1.2.1-cp27-cp27m-macosx_10_7_x86_64.whl 
