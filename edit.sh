#!/bin/sh
latex_watch() {
    function cleanup {
        latexmk -c
        exit
    }

    trap cleanup SIGINT SIGTERM
    latexmk -pvc -pdf main.tex
}

latex_watch

