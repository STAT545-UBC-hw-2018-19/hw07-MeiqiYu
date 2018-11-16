
<!-- README.md is generated from README.Rmd. Please edit that file -->

# powers

This is an R package based on the [original
version](https://github.com/vincenzocoia/powers) from Vencenzo.

## What did I do in this assignment?

  - I added a family of box-cox transforms, including `box2cox()`,
    `box2cox_reverse()` and `box2cox_2parameter` to the original
    `powers` package.
    
    `box2cox()` function aims to do a Box-Cox transform.
    
    `box2cox_reverse()` function aims to do a Box-Cox inverse transform.
    
    `box2cox_2parameter` function aims to do a Box-Cox transform which
    contains 2 parameters.

  - Document all exported functions.

  - Include at least three unit tests for new functions that test common
    use cases that you anticipate of the function.

  - Update the README and vignette to show usage of all the functions in
    the package.

## Installation

You can install `powers` from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-MeiqiYu")
```

## Example

See the
[vignette](https://github.com/STAT545-UBC-students/hw07-MeiqiYu/blob/master/vignettes/using_powers.Rmd)
for more extensive use, but here’s some examples:

``` r
powers::box2cox(x=1:6,lambda = 2:7)
#> [1]     0.000000     2.333333    20.000000   204.600000  2604.000000
#> [6] 39990.714286
powers::box2cox_reverse(x=1:6,lambda = 2:7)
#> [1] 1.732051 1.912931 1.898829 1.838416 1.772394 1.711404
powers::box2cox_2parameter(x=1:5,lambda1 = 0,lambda2 = 4)
#> [1] 1.609438 1.791759 1.945910 2.079442 2.197225
```
