#!/usr/bin/env bash

base_path="../"
if [ "$(basename "$PWD")" == "cv" ]; then
    base_path="./"
    echo "The current directory is named 'cv'."
fi

echo $base_path
out_dir="out"

cd $base_path || exit 1

pwd
# remove $base_path/main.pdf
[ -f $out_dir/main.pdf ] && rm $out_dir/main.pdf || echo "continue without remove"

# test if $base_path/main.pdf is removed
[ -f $out_dir/main.pdf ] && exit 1 || echo "continue building pdf output"

# build pdf from source
pdflatex -output-directory="$out_dir" src/main.tex

# exit successfully if pdf present or with error if not present
[ -f $out_dir/main.pdf ] || exit 1

exit 0
