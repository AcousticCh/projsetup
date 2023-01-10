#!/bin/bash 

touch README.md README.rst 

echo "Copyright (c) 2022 Robert Hassenmayer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" >> LICENSE

echo  "[build-system]
requires = ['setuptools>=40.8.0', 'wheel']
build-backend = 'setuptools.build_meta:__legacy__'" >> pyproject.toml

echo "[metadata]
name = 
version = 0.1
description = 
author = Robert Hassenmayer
author_email = hassenr@proton.me
license = MIT
classifiers =
    Intended Audience :: Developers
    License :: OSI Approved :: MIT License
    Operating System :: OS Independent
    Programming Language :: Python
    Programming Language :: Python :: 3
    Programming Language :: Python :: 3 :: Only
    Programming Language :: Python :: 3.8
    Programming Language :: Python :: 3.9

[options]
include_package_data = true
packages = find:
python_requires = >=3.8" >> setup.cfg

echo "from setuptools import setup

setup()" >> setup.py

echo "include LICENSE
include README.rst
recursive-include <app>/static *
recursive-include <app>/templates *" >> MANIFEST.in
