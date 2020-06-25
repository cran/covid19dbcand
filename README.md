
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

**covid19dbcand** is a smaller version from [dbdataset
package](https://github.com/Dainanahan/dbdataset) that contains 75
different data frames that constitute the dataset parsed from
[DrugBank](https://www.drugbank.ca).

The dataset was extracted from the DrugBank XML database via
[dbparser](https://docs.ropensci.org/dbparser) R package.

This dataset dedicated to covid-19 potential drugs in
[Drugbank](https://www.drugbank.ca/covid-19#drugs).

It can be used for conveniently exploring and analyzing the contents of
the DrugBank database. The dataset is also intended to assist in drug
discovery endeavors that plan to make use of the **DrugBank** database.

Moreover; it also can be used to in Machine Learning in many sub-fields
such as:

  - Natural Language Processing (NLP)
  - Web Scrapping
  - Visualization

### Installation

As the package size exceeds the limit set by CRAN, it will be hosted on
Github only for now. Hence, it could be installed via the following
command.

``` r
install.packages(covid19dbcand)
```

The datasets will then be available after running the following command:

``` r
library(covid19dbcand)
```

## Used Versions

  - dbparser: 1.1.2
  - Drugbank: 5.1.6
