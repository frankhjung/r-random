#!/usr/bin/make

.PHONY: all clean
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
	@$(RM) $(PDF)

cleanall: clean
	@$(RM) -rf cache figure
