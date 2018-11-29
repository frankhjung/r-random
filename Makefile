#!/usr/bin/make

.PHONY: all clean
.SUFFIXES: .Rmd .html

R	= /usr/bin/R
DOC	= random
RMD	:= $(patsubst %, %.Rmd, $(DOC))
HTML	:= $(patsubst %.Rmd, %.html, $(RMD))

.Rmd.html:
	@$(R) --quiet --slave --vanilla --file=make.R --args $<

$(HTML): $(RMD)

all: clean $(HTML)

clean:
	@$(RM) $(HTML)

cleanall: clean
	@$(RM) -rf cache figure
