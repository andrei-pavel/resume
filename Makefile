default: format lint pdf

format:
	latexindent -l=./latexindent.yaml ./main.tex > ./tmp.tex && mv ./tmp.tex ./main.tex || true

lint:
	lacheck ./main.tex || true
	chktex ./main.tex || true

pdf:
	while true; do printf '\n'; done | latexmk -f -pdf -quiet ./main.tex

.PHONY: format lint pdf
