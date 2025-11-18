
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asciiConverter

<!-- badges: start -->

<!-- badges: end -->

The ascii converter package aims to provide users with a tool that is
both creative and simple in reconstructing regular text into a fun ASCII
art text that is bolded and block styled. Users will be able to input
text through multiple sources including directly from the R terminal,
from .txt files, and potentially from .csv files. The package will then
output the stylized block text either into the terminal or into the text
files. Our goal for this package is to build a visually appealing and
striking text that will be an easy tool for users as well as versatile.
This will allow for users to edit and customize the output while also
providing multiple input and output options. The package can be useful
in building creative messaging for message, hears, or designs within the
user’s console, application, report, or other academic tools.

Some of the key components of this package include functions that are
able to convert individual letters into the ASCII block format.
Beginning with mapping letters to numeric values that will determine how
each letter character will be constructed. From there, these functions
will be flexible, allowing for users to read text from different
sources, convert it into block text, and write the output into a
terminal or file. Through combining these functions, the ascii_converter
brings forth an efficient and organized tool to help turn regular text
into fun, fancy, block style text that will be fast, easy, accessible,
and user friendly allowing for a new creative tool in coding.

## Installation

You can install the development version of asciiConverter from
[GitHub](https://github.com/Lydia-Blackwell-Esslami/asciiConverter)
with:

``` r
# install.packages("pak")
pak::pak("Lydia-Blackwell-Esslami/asciiConverter")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(asciiConverter)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
