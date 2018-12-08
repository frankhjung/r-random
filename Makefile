#!/usr/bin/make

.PHONY: all clean cleanall
.SUFFIXES: .Rmd .pdf

R	= /usr/bin/R
DOC	= random
RMD	:= $(patsubst %, %.Rmd, $(DOC))
PDF	:= $(patsubst %.Rmd, %.pdf, $(RMD))

.Rmd.pdf:
	@$(R) --quiet --slave --vanilla --file=make.R --args $<

$(PDF): $(RMD)

all: clean $(PDF)

clean:
	@$(RM) *.random test.* *.zip temp.random.*

cleanall: clean
	@$(RM) -rf cache figure $(PDF) $(DOC).html
