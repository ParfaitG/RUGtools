#' R User Group Introduction Slides
#'
#' This function creates an ioslides R Markdown template, with default content 
#' routinely used when introducing Chicago R user group meetups. 
#' 
#' Slides are useful because they look good and you won't forget to do important things
#' like \strong{thanking the Sponsors!} Slides can be accessed from within R Studio 
#' using the \strong{New R Markdown} dialog menu, and then selecting \strong{From Template}. 
#' One can also use the \code{\link{draft}} function, exemplified in the Examples 
#' section below. 
#' 
#' @return A folder containing the R Markdown template as well as supporting images.
#' 
#' @details Default template includes placeholder slides for the following:
#' \itemize{
#' \item{\strong{Local R news: }}{Announcements about your local meetup or general R community.}
#' \item{\strong{Global R news: }}{R Consortium announcements and upcoming conferences 
#' like R/Finance and UseR!.}
#' \item{\strong{R-Ladies: }}{Welcome the local R-Ladies chapter.}
#' \item{\strong{Jobs: }}{Ask the audience if anyone is hiring or if recuiters are present.}
#' \item{\strong{Thank the Sponsors: }}{Display their logo and promotional material of preference.}
#' \item{\strong{R Swag: }}{Giveaways of hex stickers, Raffle off books, etc.}
#' \item{\strong{Tonights presentations: }}{Summary of presentations.}
#' }
#' 
#' 
#' @param ... Arguments passed to rmarkdown::ioslides_presentation function.
#' 
#' @source See R Studio's \href{https://rmarkdown.rstudio.com/developer_document_templates.html}{Document Templates}
#'  for more information on creating custom R Markdown templates for your meetup.
#' 
#' @examples 
#' \dontrun{
#' rmarkdown::draft(file="Meetup-2018-n5.Rmd", template = "intro_slides", package="RUGtools")
#' }
#'@export
intro_slides <- function(...) {
  
  # get the locations of resource files located within the package
  logo <- system.file("rmarkdown/templates/intro_slides/skeleton/images/Rlogo436x338.png", package = "CRUGtools")
  
  # call the base html_document function
  rmarkdown::ioslides_presentation(widescreen = TRUE, logo = logo, ...)
  
}