#' Download ABVD data
#'
#' This function downloads data from ABVD (https://abvd.shh.mpg.de/austronesian/) and changes language names to the names from lingtypology database. You need the internet connection.
#'
#' @param feature A character vector that define a language id from ABVD (e. g. "1", "292").
#' @param glottolog.source A character vector that define which glottolog database is used: 'original' or 'modified' (by default)
#' @author George Moroz <agricolamz@gmail.com>
#' @seealso \code{\link{afbo.feature}}, \code{\link{autotyp.feature}}, \code{\link{phoible.feature}}, \code{\link{sails.feature}}, \code{\link{wals.feature}}
#' @examples
#' # abvd.feature(c(292, 7))
#' @export
#'
#' @importFrom utils read.csv
#'

abvd.feature <- function(feature, glottolog.source = "modified") {message("Don't forget to cite a source:

Greenhill, S.J., Blust. R, & Gray, R.D. (2008). The Austronesian Basic Vocabulary Database: From Bioinformatics to Lexomics. Evolutionary Bioinformatics, 4:271-283.")
  if (is.numeric(feature)) {
    links <-
      paste0(
        "https://abvd.shh.mpg.de/utils/save/?type=tdf&section=austronesian&language=",
        feature
      )
  } else{
    stop("You need to provide a numeric vector with language id from ABVD.")
  }
  datalist  <-  lapply(links, function(x) {
    lines <- readLines(x, n = 26)
    skip <- grep(pattern = "^id", lines)[2]
    utils::read.csv(x,
                    sep = "\t",
                    skip = skip - 1,
                    stringsAsFactors = FALSE)[, c(2:4)]
  })
  langs <-
    lang.gltc(lingtypology::abvd[feature, 2], glottolog.source = glottolog.source)
  lapply(seq_along(feature), function(i) {
    datalist[[i]]$language <<- langs[i]
  })
  final_df <- Reduce(function(x, y) {
    rbind.data.frame(x, y)
  }, datalist)
  return(final_df)
}
