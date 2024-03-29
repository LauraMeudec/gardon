% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_preparation.R
\name{getDataRegion}
\alias{getDataRegion}
\title{Creation d'une base de donnees regionale}
\usage{
getDataRegion(
  file.name = NULL,
  package.data = TRUE,
  file.name.mei = NULL,
  station.filter = NULL,
  colname.station.filter = NULL,
  type.ce.IDF = NULL,
  colname.type.ce.sta = NULL,
  dir = getwd(),
  region.code.insee = NULL,
  departement.code.insee = NULL,
  unh.code.sandre = NULL,
  echelle = NULL,
  date = NULL,
  CRS = NULL,
  correct.coord = FALSE,
  save = FALSE,
  ecrevisse = FALSE
)
}
\arguments{
\item{file.name}{Nom des donnees en format .RData correspondant a un extrait d'ASPE.}

\item{package.data}{Argument logique \code{TRUE/FALSE}. Indique si les donnees exemple du package doivent etre utilisees.}

\item{file.name.mei}{Nom des donnees en format .RData correspondant a la table des mesures individuelles.}

\item{station.filter}{Table additionnelle contenant le numero Sandre des stations a conserver.}

\item{colname.station.filter}{Colonne de \code{station.filter} qui contient le numero des stations Sandre.}

\item{type.ce.IDF}{Table additionnelle contenant les types de cours d'eau et qui est reliee aux autres tables par le code Sandre.}

\item{colname.type.ce.sta}{Colonne de \code{type.ce.IDF} qui contient le numero des stations Sandre.}

\item{dir}{Chemin d'acces ou trouver le fichier de \code{file.name}. Par defaut regle sur le repertoire de travail (\verb{dir = }\code{\link[base]{getwd}}).}

\item{region.code.insee}{Code Insee de la region d'interet. Doit etre accompagne de \code{echelle = "region"}. Par defaut \code{region.code.insee = NULL} et toutes les donnees seront conservees.}

\item{departement.code.insee}{Code Insee du departement d'interet. Doit etre accompagne de \code{echelle = "departement"}. Par defaut \code{departement.code.insee = NULL} et toutes les donnees seront conservees.}

\item{unh.code.sandre}{Code sandre de l'unite hydrographique d'interet. Doit etre accompagne de \code{echelle = "bassin"}. Par defaut \code{unh.code.sandre = NULL} et toutes les donnees seront conservees.}

\item{echelle}{Quatre possibilites. (1) Besoin de selectionner une ou plusieurs (\code{c()}) regions, alors \code{echelle = "region"}. (2) Besoin de selectionner un ou plusieurs (\code{c()}) departements, alors \code{echelle = "departement"}. (3) Besoin de selectionner une ou plusieurs (\code{c()}) unite hydrographique, alors \code{echelle = "bassin"}. (4) Besoin de toutes les donnees, alors \code{echelle = NULL}.}

\item{date}{Deux possibilites. (1) Date minimum a partir de laquelle on veut les donnees au format \code{'\%Y-\%m-\%d'}. (2) Periode de temps pendant laquelle on veut les donnees au format \code{c('\%Y-\%m-\%d', '\%Y-\%m-\%d')}. Par defaut \code{date = NULL}.}

\item{CRS}{CRS souhaite. Celui de la France metropolitaine est 2154. Par defaut \code{CRS = NULL} et les coordonnees ne seront pas mofidiees.}

\item{correct.coord}{Argument logique \code{TRUE/FALSE}. Par defaut \code{correct.coord = FALSE} et les coordonnees ne sont pas modifiees.}

\item{save}{Argument logique \code{TRUE/FALSE}. Par defaut \code{save = FALSE} et la tableau de donnees cree n'est pas enregistre dans le repertoire de travail.}

\item{ecrevisse}{Argument logique \code{TRUE/FALSE}. Par defaut \code{save = FALSE} et les ecrevisses sont gardees dans la base de donnees.}
}
\value{
La nouvelle base de donnees au format dataframe.
}
\description{
Creation d'une base de donnees unique en joignant les tables extraites d'ASPE. Peut aussi transformer les coordonnees selon le referentiel desire.
}
\examples{
test_df <- getDataRegion(
file.name = NULL,
package.data = TRUE, #utilisation des donnees en exemple
file.name.mei = NULL,
station.filter = NULL,
region.code.insee = 11, #la region ile de france
departement.code.insee = NULL,
echelle = "region",
date = '2007-01-01', #donnees a partir de 2007
CRS = 2154, #le crs de la France metropolitaine
correct.coord = TRUE,
save = FALSE,
ecrevisse = FALSE
)

}
