## Thoughts on Random Number Generators

The document [random.Rmd](./random.Rmd) is RMarkdown that was used to generate
the blog article. It contains all code use to generate the example data.

To generate document from [RMarkdown](https://rmarkdown.rstudio.com/) use:

```r
library(rmarkdown)
render("random.Rmd", output_format = "html_document")
```

This can be also be done using the supplied Makefile:

```bash
make random.html
```
