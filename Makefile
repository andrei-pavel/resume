default: clean format lint pdf

clean:
	git clean -dffx .

format:
	latexindent -l=./latexindent.yaml ./main.tex > ./tmp.tex && mv ./tmp.tex ./main.tex || true

lint:
	lacheck ./main.tex || true
	chktex ./main.tex || true

pdf:
	latexmk -f -pdf -quiet ./main.tex || true

.PHONY: clean format lint pdf
