# -------------------------------------------------------
# Configuration
# -------------------------------------------------------
MAIN        = main
BUILD_DIR   = build
LATEX       = pdflatex
LATEXFLAGS  = -interaction=nonstopmode -output-directory=$(BUILD_DIR)

# -------------------------------------------------------
# Default target
# -------------------------------------------------------
.PHONY: all
all: $(BUILD_DIR)/$(MAIN).pdf

# -------------------------------------------------------
# Create build directory if it doesn't exist
# -------------------------------------------------------
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# -------------------------------------------------------
# Compile the presentation
# run twice to resolve references
# -------------------------------------------------------
$(BUILD_DIR)/$(MAIN).pdf: $(MAIN).tex $(wildcard slides/*.tex) $(BUILD_DIR)
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# -------------------------------------------------------
# Open the PDF
# -------------------------------------------------------
.PHONY: view
view: $(BUILD_DIR)/$(MAIN).pdf
	xdg-open $(BUILD_DIR)/$(MAIN).pdf &

# -------------------------------------------------------
# Clean auxiliary files
# -------------------------------------------------------
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)/*.aux \
	       $(BUILD_DIR)/*.log \
	       $(BUILD_DIR)/*.nav \
	       $(BUILD_DIR)/*.out \
	       $(BUILD_DIR)/*.snm \
	       $(BUILD_DIR)/*.toc \
	       $(BUILD_DIR)/*.vrb

# -------------------------------------------------------
# Clean everything including the PDF
# -------------------------------------------------------
.PHONY: cleanall
cleanall:
	rm -rf $(BUILD_DIR)