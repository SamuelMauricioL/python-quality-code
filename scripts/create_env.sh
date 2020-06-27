#! /bin/bash -e

environment_header=$(head -n 1 environment.yml)
environment_name=${environment_header/name: /}

conda remove --yes --quiet  -n "${environment_name}" --all
conda env create --quiet --force -f environment.yml