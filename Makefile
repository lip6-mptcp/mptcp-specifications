
META ?= meta.dt

all: meta.png

# lol ?
article.pdf:
	latexmk article.tex

meta.png: ${META}
	# -O generates filename based on input
	# -o<filename>
	dot -Tpng ${META} -o meta.png

meta.svg: ${META}
	dot -Tsvg ${META} -O

# generate state machine
implementation.png: implementation.txt
	dot -Tpng implementation.txt -o implementation.png
#implementation.gv:



# force generation
#.PHONY: all
