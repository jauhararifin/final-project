all: pdf clean

pdf:
	mkdir -p temp
	latexmk -pdf -bibtex -outdir=temp -cd src/main.tex
	mv temp/main.pdf Laporan-TA-1.pdf

clean:
	rm -r temp
	find . -iname "*~" -exec rm '{}' ';'
