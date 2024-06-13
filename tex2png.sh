#!/bin/sh

# make sure to compile the latex file and output to
# png file.

compile_latex() {
    pdflatex "$1"
}

clean_up() {
    rm -f main.aux main.log main.out
}

if [ $# -ne 2 ]; then
    echo "Usage: $0 main.tex output_file"
    exit 1
fi

tex_file="$1"
output_file="$2"

if compile_latex "$tex_file"; then
    pdftoppm -png main.pdf "${output_file%.*}"
    echo "Conversion complete: main.pdf -> $output_file"
    clean_up
    echo "Auxiliary files removed."
else
    echo "LaTeX compilation failed. Please check $tex_file for errors."
    exit 1
fi

