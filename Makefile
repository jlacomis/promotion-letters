LETTERS = bogdan-assoc.pdf claire-assoc.pdf claire-tenure.pdf

%.pdf: %.tex letter.tex
	pdflatex -jobname=$* letter.tex

all: $(LETTERS)

.PHONY: clean

clean:
	rm -f *log *aux *pdf *fdb_latexmk *fls
