default: format lint pdf

format:
	latexindent -l=./latexindent.yaml ./main.tex > ./tmp.tex && mv ./tmp.tex ./main.tex

lint:
	lacheck ./main.tex
	chktex ./main.tex

pdf:
	while true; do printf '\n'; done | latexmk -pdf -f

.PHONY: format lint pdf
