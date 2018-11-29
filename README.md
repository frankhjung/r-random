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

## References

* [How do I measure the randomness of a sequence?](https://www.quora.com/How-do-I-measure-the-randomness-of-a-sequence)

### Versions

The versions of software used for this article are:


  | Command   | Version                             |
  | ---       | ---                                 |
  | awk       | GNU Awk 4.2.1                       |
  | bash      | GNU bash, version 4.4.23(1)-release |
  | bc        | 1.07.1                              |
  | fold      | (GNU coreutils) 8.30                |
  | head      | (GNU coreutils) 8.30                |
  | knitr     | 1.20                                |
  | od        | (GNU coreutils) 8.30                |
  | randtests | 1.0                                 |
  | RStudio   | 1.1.463                             |
  | seq       | seq (GNU coreutils) 8.30            |
  | tr        | (GNU coreutils) 8.30                |
