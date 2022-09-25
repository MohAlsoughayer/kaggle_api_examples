#!/bin/zsh

kernels=$(kaggle kernels list --user jhoward | egrep -oh 'jhoward/(\S)*')

while read n; do
  echo "Downloading $n"
  kaggle kernels pull $n -p "/Users/Moh/Documents/misk_skills/kaggle_api_examples/JHoward/"
done <<< "$kernels"

