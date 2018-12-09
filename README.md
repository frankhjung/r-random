# Thoughts on Random Number Generators

1. [Random Number Generators in bash scripts](./random.Rmd)
2. [Random Number Generators to test code](./code.Rmd) - TODO
3. [Random Number Generators in simulation](./simulate.Rmd) - TODO

The documents are written in RMarkdown. It contains all code used to generate
the examples and plots.

To generate document from [RMarkdown](https://rmarkdown.rstudio.com/) use:

```r
library(rmarkdown)
render("random.Rmd", output_format = "html_document")
```

The PDF can be built using the supplied Makefile:

```bash
make random.pdf
```

## Publishing

To publish to RPubs:

```r
library(knitr)
knit_with_parameters('~/dev/gnur/random/random.Rmd')

library(markdown)
rpubsUpload("Thoughts on Random Number Generators", "random.html")
```

Published as http://rpubs.com/frankjungdss/random-bash

## References

* [How do I measure the randomness of a
sequence? (Roth)](https://www.quora.com/How-do-I-measure-the-randomness-of-a-sequence)
* [randtests](https://cran.r-project.org/web/packages/randtests/randtests.pdf)
  package
* [The Rank Version of von Neumann's Ratio Test for Randomness (Bartels)](https://www.researchgate.net/publication/230639951_The_Rank_Version_of_von_Neumann's_Ratio_Test_for_Randomness)
* [Nonparametric Tests for Randomness (Wang)](http://www.ifp.illinois.edu/~ywang11/paper/ECE461Proj.pdf)
* [QuickCheck: A Lightweight Tool for Random Testing of Haskell
Programs (Claessen, Hughes) ](https://www.researchgate.net/publication/2449938_QuickCheck_A_Lightweight_Tool_for_Random_Testing_of_Haskell_Programs)

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
  
Built on Operating System:

  | Detail  | Version                     |
  | ---     | ---                         |
  | Distro  | Debian GNU/Linux buster/sid |
  | Kernel  | 4.18.0-3-amd64 x86_64)      |
  
