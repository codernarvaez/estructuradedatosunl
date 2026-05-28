.PHONY: html pdf render preview publish clean

html:
	quarto render --to html

pdf:
	quarto render --to pdf

render:
	quarto render

preview:
	bash scripts/preview-local.sh

publish:
	bash scripts/publish-gh-pages.sh

clean:
	rm -rf _book .quarto *_files *_cache **/*.quarto_ipynb index.tex index.log
