#!/bin/zsh
user = $1
kernels=$(kaggle kernels list --user $user --page-size 40 | egrep -oh '$user/(\S)*')

while read n; do
  echo "Downloading $n"
  kaggle kernels pull $n -p "/Users/Moh/Documents/misk_skills/kaggle_api_examples/$user/"
done <<< "$kernels"
