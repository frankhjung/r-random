# Thoughts on Random Number Generators

1. [Random Number Generators in bash scripts](https://gitlab.com/theMarloGroup/articles/random)
2. [Random Number Generators to test code](https://gitlab.com/theMarloGroup/articles/quickcheck)
3. [Random Number Generators in simulation](https://gitlab.com/theMarloGroup/articles/simulation)


## Building

The documents are written in [RMarkdown](https://rmarkdown.rstudio.com/). It
contains all code used to generate the examples and plots.

To generate documents use either:

```r
library(rmarkdown)
render("random.Rmd", output_format = "html_document")
render("random.Rmd", output_format = "pdf_document")
```

Or the supplied [Makefile](https://www.gnu.org/software/make/):

```bash
make clean random.html
make clean random.pdf
```

Because the `urandom` is not reproducible, the two reports will defer in that
sections output.


## Publishing

To publish to [RPubs](http://rpubs.com/):

```r
library(knitr)
knit_with_parameters('~/dev/gnur/random/random.Rmd')

library(markdown)
rpubsUpload("Thoughts on Random Number Generators", "random.html")
```

Published as http://rpubs.com/frankjungdss/random-bash and
http://rpubs.com/frankjungdss/random-bash-ggplot2


## References

* [How do I measure the randomness of a
sequence? (Roth)](https://www.quora.com/How-do-I-measure-the-randomness-of-a-sequence)
* [randtests](https://cran.r-project.org/web/packages/randtests/randtests.pdf)
  package
* [The Rank Version of von Neumann's Ratio Test for Randomness (Bartels)](https://www.researchgate.net/publication/230639951_The_Rank_Version_of_von_Neumann's_Ratio_Test_for_Randomness)
* [Nonparametric Tests for Randomness (Wang)](http://www.ifp.illinois.edu/~ywang11/paper/ECE461Proj.pdf)
* [QuickCheck: A Lightweight Tool for Random Testing of Haskell
Programs (Claessen, Hughes) ](https://dl.acm.org/citation.cfm?id=351266)
* [Random Testing (Hamlet)](http://www.cse.msu.edu/~cse870/Materials/Testing/hamlet.homepage.random.ps)
* [When Only Random Testing Will Do (Hamlet)](https://dl.acm.org/citation.cfm?id=1145737)


## Versions

The versions of software used for this article are:

  | Command   | Version                             |
  | ---       | ---                                 |
  | awk       | GNU Awk 4.2.1                       |
  | bash      | GNU bash, version 4.4.23(1)-release |
  | bc        | 1.07.1                              |
  | fold      | (GNU coreutils) 8.30                |
  | ggplot2   | 3.1.0                               |
  | head      | (GNU coreutils) 8.30                |
  | knitr     | 1.20                                |
  | lubridate | 1.7.4                               |
  | od        | (GNU coreutils) 8.30                |
  | R         | 3.5.1 (2018-07-02)                  |
  | randtests | 1.0                                 |
  | RStudio   | 1.1.463                             |
  | seq       | seq (GNU coreutils) 8.30            |
  | tr        | (GNU coreutils) 8.30                |

Built on Operating System:

  | Detail | Version                     |
  | ---    | ---                         |
  | Distro | Debian GNU/Linux buster/sid |
  | Kernel | 4.18.0-3-amd64 x86_64)      |

