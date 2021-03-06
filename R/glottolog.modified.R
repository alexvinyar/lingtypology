#' Catalogue of languages of the world
#'
#' A dataset containes the modified catalogue of languages of the world
#' involving genealogical affiliation, macro-area, country, iso code,
#' and coordinates.
#'
#' Glottolog 2.7. Hammarstrom, Harald & Forkel, Robert & Haspelmath, Martin &
#' Bank, Sebastian. 2016.
#' Max Planck Institute for the Science of Human History.
#' Accessed on 2016-06-15.
#'
#' @format A data frame with 8566 rows and 7 variables:
#' \describe{
#'   \item{language}{name of the language}
#'   \item{iso}{code based on ISO 639--3 \url{http://www-01.sil.org/iso639-3/}}
#'   \item{glottocode}{languoid code from Glottolog 2.7}
#'   \item{longitude}{longitude}
#'   \item{latitude}{latitude}
#'   \item{affiliation}{genealogical affiliation}
#'   \item{area}{have six values Africa, Australia, Eurasia, North America, Papunesia, South America}
#'   \item{alternate names}{alternative language names}
#'   \item{affiliation-HH}{some additional source for affiliation}
#'   \item{country}{list of countries, where the language is spoken}
#'   \item{dialects}{dialects of language}
#'   \item{language status}{language status. In glottolog.modified comments are removed. In glottolog.original they are reserved. Have 14 categories: 1 (Natioanl); 2 (Provincial); 3 (Wider communication); 4 (Educational); 5 (Developing);  6a (Vigorous); 6b (Threatened); 7 (Shifting); 8a (Moribund); 8b (Nearly extinct); 8b (Reintroduced); 9 (Dormant); 9 (Second language only);  10 (Extinct)}
#'   \item{language use}{language use}
#'   \item{location}{location}
#'   \item{population numeric}{pure population info}
#'   \item{typology}{some information form WALS}
#'   \item{writing}{information about writing system}
#' }
#'

"glottolog.modified"

