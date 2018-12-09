#!/usr/bin/make

.PHONY: all clean cleanall
.SUFFIXES: .Rmd .html .pdf

R	= /usr/bin/R
DOC	= random
RMD	:= $(patsubst %, %.Rmd, $(DOC))
HTML	:= $(patsubst %.Rmd, %.html, $(RMD))
PDF	:= $(patsubst %.Rmd, %.pdf, $(RMD))

.Rmd.html:
	@$(R) --quiet --slave --vanilla --file=make.R --args $@

$(HTML): $(RMD)

.Rmd.pdf:
	@$(R) --quiet --slave --vanilla --file=make.R --args $@

$(PDF): $(RMD)

all: clean $(PDF) $(HTML)

clean:
	@$(RM) *.random test.* *.zip temp.random.*

cleanall: clean
	@$(RM) -rf cache figure $(HTML) $(PDF)
