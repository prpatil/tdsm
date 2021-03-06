% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/submit_diff.R
\name{submit_diff}
\alias{submit_diff}
\title{Upload a saved diff as an anonymous gist}
\usage{
submit_diff(html_path)
}
\arguments{
\item{html_path}{A character string specifying the path to the saved diff html from "diff_report"}
}
\value{
String containing the URL to the Gist. The raw HTML in this Gist can be rendered using, for example, rawgit.com to
visualize the diff on the web.
}
\description{
Upload a saved diff as an anonymous gist
}
\details{
This function uses the github gist API to upload the saved diff
HTML file from "diff_report". The URL to the uploaded file is provided.
}

