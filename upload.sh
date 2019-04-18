#!/usr/bin/env bash
rm -rf build
rm -rf dist
rm -rf microk8s_configure.egg-info

python3 setup.py sdist bdist_wheel
python3 -m twine check dist/*
python3 -m twine upload dist/*