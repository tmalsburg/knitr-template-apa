

.PHONY: clean

manuscript.pdf: manuscript.bbl
	pdflatex manuscript
	pdflatex manuscript

manuscript.bbl: manuscript.tex manuscript.bib
	pdflatex manuscript
	biber manuscript

manuscript.tex: manuscript.Rnw
	Rscript -e "library(knitr); knit('manuscript.Rnw')"

clean:
	rm -f manuscript.aux manuscript.bbl manuscript.bcf manuscript.blg manuscript.fff manuscript.log manuscript.out manuscript.pdf manuscript.run.xml manuscript.tex
