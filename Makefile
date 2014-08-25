all: report

help:
	@echo "Use:"
	@echo "  build  - build all"
	@echo "  report - run only LaTeX compilation"
	@echo "  clean"

build: report

report:
	pdflatex report.tex
	biber report.bcf
	pdflatex report.tex

clean:
	for file in `find . -name "*.pdf"`; do rm $$file; done
	for file in `find . -name "*.log"`; do rm $$file; done
	for file in `find . -name "*.aux"`; do rm $$file; done
	for file in `find . -name "*.bbl"`; do rm $$file; done
	for file in `find . -name "*.blg"`; do rm $$file; done
	for file in `find . -name "*.toc"`; do rm $$file; done
	for file in `find . -name "*.out"`; do rm $$file; done
	for file in `find . -name "*.ftm"`; do rm $$file; done
	for file in `find . -name "*.eps"`; do rm $$file; done
	for file in `find . -name "*.bcf"`; do rm $$file; done
	for file in `find . -name "*.run.xml"`; do rm $$file; done