all: pdf clean

pdf:
	mkdir -p temp
	latexmk -pdf -bibtex -outdir=temp -cd src/main.tex
	mv temp/main.pdf Laporan-TA.pdf

clean:
	rm -r temp
	find . -iname "*~" -exec rm '{}' ';'
	rm src/main-blx.bib \
	src/main.aux \
	src/main.bbl \
	src/main.blg \
	src/main.fdb_latexmk \
	src/main.fls \
	src/main.lof \
	src/main.log \
	src/main.lot \
	src/main.out \
	src/main.pdf \
	src/main.run.xml \
	src/main.synctex.gz \
	src/main.toc \
	src/main.bcf || true
