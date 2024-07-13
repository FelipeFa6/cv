#!/bin/sh

IMG_DIR="img"
TEX_FILE="main.tex"

compile_latex() {
  pdflatex "$1"
}

rm -rf "$IMG_DIR" || true
mkdir -p "$IMG_DIR"

# Compile the LaTeX file to PDF
compile_latex "$TEX_FILE"

# Get the number of pages in the PDF
num_pages=$(pdfinfo main.pdf | grep Pages: | awk '{print $2}')

# Convert each page of the PDF to a PNG image
for page_num in $(seq 1 $num_pages); do
  output_file="$IMG_DIR/page-$page_num.png"
  pdftoppm -png -f "$page_num" -singlefile main.pdf "$IMG_DIR/page-$page_num"
done

# Cleanup
rm -f main.aux main.log main.out

echo "Image generation complete."

