doc: build/informe.pdf

build:
	-mkdir -p build
	-mkdir -p build/images

build/informe.pdf: build docs/informe.tex
	pdflatex --output-directory build docs/informe.tex
	pdflatex --output-directory build docs/informe.tex
	pdflatex --output-directory build docs/informe.tex

clean:
	rm -rf build

doc-preview: doc
	./scripts/preview build/informe.pdf &

doc-spell:
	aspell -t check docs/informe.tex -d es

