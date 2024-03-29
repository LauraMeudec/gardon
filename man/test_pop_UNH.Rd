% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unh.R
\name{test_pop_UNH}
\alias{test_pop_UNH}
\title{Conformite des valeurs d'unite hydrographique}
\usage{
test_pop_UNH(
  data,
  stat = TRUE,
  dir = getwd(),
  file.name = "pop_UNH",
  unite.hydro = "H2",
  csv = TRUE,
  pdf = TRUE
)
}
\arguments{
\item{data}{Donnees de sortie de la fonction \code{\link{getDataRegion}}.}

\item{stat}{Argument logique \code{TRUE/FALSE}. Par defaut \code{stat = TRUE} et deux tableaux contenants les resultats de la fonction sont affiches.}

\item{dir}{Chemin d'acces ou enregistrer les fichiers de sortie. Par defaut regle sur le repertoire de travail (\verb{dir = }\code{\link[base]{getwd}}).}

\item{file.name}{Nom a donner aux fichiers en sortie. Par defaut \code{file.name = "pop_UNH"}.}

\item{unite.hydro}{Code l'unite hydro en question. Par defaut regle sur la zone IDF (\code{unite.hydro = "H2"}).}

\item{csv}{Argument logique \code{TRUE/FALSE}. Par defaut \code{csv = TRUE} et le fichier csv est enregistre dans le repertoire de travail ou le repertoire indique (\code{dir}).}

\item{pdf}{Argument logique \code{TRUE/FALSE}. Par defaut \code{pdf = TRUE} et un pdf avec les figures est cree dans le repertoire indique (\code{dir}).}
}
\value{
Des resultats graphiques : boxplot (\code{plot = TRUE}), carte (\code{map = TRUE}) et tableaux (\code{stat = TRUE}). Un pdf reprenant ces precedents resultats. Et un tableau au format csv contenant le detail des alertes.
}
\description{
Verifie que l'unite hydrographique correspond bien a celle de la zone etudiee.
}
\examples{
test_UNH <- test_pop_UNH(
data = exemple_IDF,
pdf = FALSE,
csv = FALSE,
unite.hydro = "H2")
}
