all: pdf paper clean

pdf:
	mkdir -p temp
	latexmk -pdf -bibtex -outdir=temp -cd src/main.tex
	mv temp/main.pdf Laporan-TA.pdf

paper:
	mkdir -p temp
	latexmk -pdf -bibtex -outdir=temp -cd src/paper.tex
	mv temp/paper.pdf Paper.pdf

clean:
	rm -rf temp
	find . -iname "*~" -exec rm '{}' ';'
	rm src/{main,paper}-blx.bib \
	src/{main,paper}.aux \
	src/{main,paper}.bbl \
	src/{main,paper}.blg \
	src/{main,paper}.fdb_latexmk \
	src/{main,paper}.fls \
	src/{main,paper}.lof \
	src/{main,paper}.log \
	src/{main,paper}.lot \
	src/{main,paper}.out \
	src/{main,paper}.pdf \
	src/{main,paper}.run.xml \
	src/{main,paper}.synctex.gz \
	src/{main,paper}.toc \
	src/{main,paper}.bcf || true
