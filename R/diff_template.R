#'
#' Compare an edited report template to the standard report template
#'
#' @param analysis A character string specifing the desired analysis template. Current options are: "tsp".
#' @param file_path A character string specifying the path to the edited template file.
#'
#' @export
#'
#' @details This function uses diffr and htmlwidgets to render a file difference
#' between an existing package template and a user-edited template. An HTML
#' file is rendered and saved which displays the highlighted differences in
#' the two files. The function will create a pop-up for the user to choose where to
#' save the output - PLEASE name this "[filename].html" for whatever filename you choose.
#' 
#' @return String with the file path for the html rendering of the diff. This can be passed to
#' "submit_diff" if the user chooses to anonymously post their diff results to the web for easier sharing.
#'

diff_template <- function(analysis, file_path){

	if(!(analysis %in% c("tsp"))){
		stop("Invalid analysis class specified")
	}

	analysis_path <- normalizePath(system.file(paste0(analysis, "_template.Rmd"), package="tdsm"))

	tmp_diff <- diffr(analysis_path, file_path, before=paste("Original", analysis, "template"), after=paste("Edited", analysis, "template"))
	html_path <- file.choose()
	saveWidget(tmp_diff, html_path)
	
	html_path
	
}