#!/usr/bin/make

.PHONY: clean cleanall
.SUFFIXES: .Rmd .html .pdf

R	= /usr/bin/R

%.html: %.Rmd
	@$(R) --quiet --slave --vanilla --file=make.R --args $@

%.pdf:	%.Rmd
	@$(R) --quiet --slave --vanilla --file=make.R --args $@

clean:
	@$(RM) *.random test.* temp.random.* *.zip

cleanall: clean
	@$(RM) -rf cache figure *.html *.pdf
