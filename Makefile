pdflatex=pdflatex
bibtex=bibtex

SRC=main.tex 
SRC_ADDITIONAL=
BIB=
AUX=$(SRC:.tex=.aux)
PDF=$(SRC:.tex=.pdf)

default: all

all: pdf

pdf: $(PDF)

$(PDF): $(SRC) $(SRC_ADDITIONAL) $(BIB)
	-rm -f $(AUX)
	$(pdflatex) $<
#	$(bibtex) $(AUX)
#	$(pdflatex) $<
	$(pdflatex) $<

view: pdf
	open $(PDF)

clean:
	-rm -f *~
#	-rm -f $(PDF)
	-rm -f $(AUX)
	-rm -f *.log
	-rm -f *.bbl
	-rm -f *.out
	-rm -f *.blg

.PHONY: default all clean

