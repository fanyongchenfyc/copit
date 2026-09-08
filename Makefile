# Build CoPiT CPC manuscript (run from this directory).
# Prefer tectonic (self-contained); fall back to classic pdflatex+bibtex.

TEX = main.tex
PDF = main.pdf

.PHONY: all clean tectonic latex

all: tectonic

tectonic: $(TEX) copit_refs.bib
	tectonic --keep-logs --print $(TEX)

latex: $(TEX) copit_refs.bib
	pdflatex -interaction=nonstopmode $(TEX)
	bibtex main
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

clean:
	rm -f main.aux main.bbl main.blg main.log main.out main.spl main.toc main.xdv
