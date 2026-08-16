.PHONY: all clean help

# Versiones disponibles: <stack>_<idioma>
VERSIONS := go_es

PDFS := $(addprefix $(OUT_DIR)/,$(addsuffix .pdf,$(VERSIONS)))

PDFLATEX := pdflatex
PDFLATEX_OPTS := -interaction=

OUT_DIR := tex/

all:

clean: clean-aux
	# @rm -f $(OUT_DIR)/*.pdf
	# @rm -f $(OUT_DIR)/*.aux $(OUT_DIR)/*.log $(OUT_DIR)/*.out
	# @rm -f $(TEX_DIR)/*.aux $(TEX_DIR)/*.log $(TEX_DIR)/*.out $(TEX_DIR)/*.pdf

clean-aux:
	# @rm -f $(OUT_DIR)/*.aux $(OUT_DIR)/*.log $(OUT_DIR)/*.out
	# @rm -f $(TEX_DIR)/*.aux $(TEX_DIR)/*.log $(TEX_DIR)/*.out $(TEX_DIR)/*.pdf

help:
	@echo "Targets:"
	@echo "  all       - Genera todos los CV en PDF (por defecto)"
	@echo "  clean     - Delete all files (.pdf, .aux, .log, .out)"
	@echo "  clean-aux     - Delete all files (.aux, .log, .out)"
	@echo ""
	@echo "Versiones: $(VERSIONS)"
	@echo "Salida:    $(OUT_DIR)"
