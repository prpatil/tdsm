# tdsm
Templated Deterministic Statistical Machines

This R package is based on a philosophy of automating certain parts of a statistical analysis. In the package, the user will find templates for different 
types of analyses and functions to provide data to and compile these templates. The result of these functions is an HTML report detailing how the data were 
analyzed and providing prespecified figures and results. This report can easily be shared with collaborators to show what the user has found in their data.

Currently, one analysis has been templated - modeling gene expression data with Top Scoring Pairs. The builder function is called "tspreg_report()" and 
takes a matrix of gene expression values and a vector of binary outcomes as minimal input.

The user has no direct control over parameters and other settings. They simply input data in the desired format and get the report as output, 
without any additional manipulation on their part. But the user may desire to know how the results of the analysis would change if parameters are tweaked. 
For this, we have provided a framework:

- duplicate_template(): Duplicates a template of the user's choosing to a location on the user's machine (also of the user's choosing).
  Provides a path to the report. The user may now edit this report to their liking and use the runner function to build it, e.g. tspreg_report(path).
- diff_template(): Visualizes the line-by-line differences between the standard template and the user's edited template. The user can now log exactly 
  what changes were made and retain the report output from running the edited template to recall how the results changed.
- submit_diff(): Allows the user to anonymously upload the visualized template differences as a Github Gist. Provides URL to the Gist.

Ideally, we would like a way to record the fact that a user has changed the template as well as the link to the Gist. Currently, no option for recording 
this information is in the package, but we solicit ideas on how to do this unobtrusively and ensuring that the user remains anonymous. We also welcome 
developers who have an analysis they wish to standardize to submit it to our package. A generic template exists in the inst/ directory with which to get 
started. We provide a full vignette for developers describing what they would need to do to submit a successful template.

## Package Dependencies

rpart, pROC, knitr, rmarkdown, knitrBootstrap, rattle, httr, rjson, diffr

## Installation Instructions

- Have devtools installed
- install_github("prpatil/tdsm")

## Author

Prasad Patil