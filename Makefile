LETTERS = bogdan.pdf claire.pdf

%.pdf: %.info letter.tex
	pdflatex -jobname=$* letter.tex

all: $(LETTERS)

.PHONY: clean

clean:
	rm -f *log *aux *pdf *fdb_latexmk *fls
