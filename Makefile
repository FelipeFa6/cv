.PHONY: all clean clean-aux help

# Versiones disponibles: <stack>_<idioma>
VERSIONS := go_es

TEX_DIR  := tex
OUT_DIR  := pdf

PDFLATEX      := pdflatex
PDFLATEX_OPTS := -interaction=nonstopmode -halt-on-error -file-line-error

PDFS := $(addprefix $(OUT_DIR)/,$(addsuffix .pdf,$(VERSIONS)))

all:
	@$(MAKE) --no-print-directory $(PDFS)
	@$(MAKE) --no-print-directory clean-aux

$(OUT_DIR)/%.pdf: $(TEX_DIR)/%.tex | $(OUT_DIR)
	@echo ">>> Compilando $<"
	@cd $(TEX_DIR) && $(PDFLATEX) $(PDFLATEX_OPTS) -output-directory=../$(OUT_DIR) $(notdir $<) >/dev/null
	@cd $(TEX_DIR) && $(PDFLATEX) $(PDFLATEX_OPTS) -output-directory=../$(OUT_DIR) $(notdir $<) >/dev/null
	@echo ">>> Generado $@"

$(OUT_DIR):
	@mkdir -p $(OUT_DIR)

clean-aux:
	@rm -f $(OUT_DIR)/*.aux $(OUT_DIR)/*.log $(OUT_DIR)/*.out $(OUT_DIR)/*.toc
	@rm -f $(OUT_DIR)/*.fls $(OUT_DIR)/*.fdb_latexmk $(OUT_DIR)/*.synctex.gz
	@rm -f $(TEX_DIR)/*.aux $(TEX_DIR)/*.log $(TEX_DIR)/*.out

clean: clean-aux
	@rm -f $(OUT_DIR)/*.pdf

help:
	@echo "Targets:"
	@echo "  all       - Compila los CV a PDF en $(OUT_DIR)/ y limpia auxiliares"
	@echo "  clean     - Elimina .pdf y auxiliares"
	@echo "  clean-aux - Elimina solo auxiliares (.aux, .log, .out, ...)"
	@echo ""
	@echo "Versiones: $(VERSIONS)"
	@echo "Salida:    $(OUT_DIR)"
