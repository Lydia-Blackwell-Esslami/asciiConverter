
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asciiConverter

<!-- badges: start -->

<!-- badges: end -->

The asciiConverter package aims to provide users with a tool that is
both creative and simple in reconstructing regular text into a fun ASCII
art text that is bolded and block styled. Users will be able to input
text through multiple sources including directly from the R terminal,
from .txt files, and potentially from .csv files. The package will then
output the stylized block text either into the terminal or into the text
files. Our goal for this package is to build a visually appealing and
striking text that will be an easy tool for users as well as versatile.
This will allow for users to edit and customize the output while also
providing multiple input and output options. The package can be useful
in building creative messaging for message, headers, or designs within
the user’s console, application, report, or other academic tools.
Creating ASCII art through other formats such as by hand can be slow,
difficult, and tedious especially across different project. However, the
asciiConverter package helps solve this problem by giving users a
simple, reliable, and fully automated way to generate a fun, block style
tex that can be used for an array of outputs. By providing a
standardized charter library, along with tools that are both flexible
and simple allowing ease for users to apply ASCII art to their work.

Some of the key components of this package include functions that are
able to convert individual letters into the ASCII block format.
Beginning with mapping letters to numeric values that will determine how
each letter character will be constructed. From there, these functions
will be flexible, allowing for users to read text from different
sources, convert it into block text, and write the output into a
terminal or file. Through combining these functions, the asciiConverter
brings forth an efficient and organized tool to help turn regular text
into fun, fancy, block style text that will be fast, easy, accessible,
and user friendly allowing for a new creative tool in coding.

Lastly, to use the asciiConverter package users will be able to install
thee package directly from GitHub using the devtools package. From
there, once the package is loaded this will give instant access to all
the core functions. This includes text conversion, file-based input and
output, and configuration tools to customize the original ASCII
character library. This installation process is simple and only requires
basic R packages. Therefore making it easier for users to add
asciiConverter to their work and start creating ASCII art!

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

# Load default configuration and character library
vars <- configure()
char_lib <- load_files(vars[[2]], vars[[1]])

# Convert a string to ASCII block text and print to console
text <- "HI"
indexes <- string_convert(text)
make_lines(indexes, size = vars[[4]], char_library = char_lib)
```
