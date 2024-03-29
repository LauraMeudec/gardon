% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resume.R
\name{join_Testresult}
\alias{join_Testresult}
\title{Resume les resultats des test}
\usage{
join_Testresult(
  data,
  plot = TRUE,
  dir.in = NULL,
  dir.out = NULL,
  file.name = "final_stat",
  color.alerte = pal_alerte,
  color_type = divergent_24,
  option = 2,
  file.list = NULL,
  csv = FALSE,
  pdf = FALSE
)
}
\arguments{
\item{data}{Donnees de sortie de la fonction \code{\link{getDataRegion}}. Ou donnees en exemple : \code{data = exemple_IDF}.}

\item{plot}{Argument logique \code{TRUE/FALSE}. Par defaut \code{plot = TRUE} et un boxplot de la dispertion des valeurs est trace.}

\item{dir.in}{Chemin d'acces ou se trouve les fichiers csv qui correspondent aux sorties des tests realisees.}

\item{dir.out}{Chemin d'acces ou enregistrer les fichiers de sortie.}

\item{file.name}{Nom a donner aux fichiers en sortie. Par defaut \code{file.name = "final_stat"}.}

\item{color.alerte}{Vecteur. Contient les deux couleurs indiquant une alerte ou non. Par defaut, \code{color.alerte = pal_alerte}.}

\item{option}{Deux possibilites pour charger les tableaux des resultats des tests. Si \code{option = 1} les fichiers .csv sont importes depuis le repertoire de travail indique (\code{dir.in}) dans lequel les resultats des fonctions ont ete enregiste. Si \code{option = 2}, \code{file.list = c("")} doit etre complete avec les noms des dataframes presentes dans l'environnement de R.}

\item{file.list}{Si \code{option = 2}, \code{file.list = c("")} doit etre complete avec les noms des dataframes presentes dans l'environnement de R correspondant aux resultats des fonctions.}

\item{csv}{Argument logique \code{TRUE/FALSE}. Par defaut \code{csv = TRUE} et le fichier csv est enregistre dans le repertoire de travail ou le repertoire indique (\code{dir}).}

\item{pdf}{Argument logique \code{TRUE/FALSE}. Par defaut \code{pdf = TRUE} et un pdf avec les figures est cree dans le repertoire indique (\code{dir}).}

\item{color.type}{Vecteur. Contient les couleurs des types d'alertes. Par defaut, \code{color.type = divergent_24}.}
}
\value{
Des graphiques et un fichier csv. La table des alertes.
}
\description{
Fusion des resultats des test realisees au sein d'un seul fichier et production de graphes resumant ces resultats.
}
\details{
Attention ! Les resultats de certaines fonctions ne peuvent pas etre inseres dans cette fonction. Cela concerne les tests sur les especes et les lots : \code{\link{test_sp_occ}}, \code{\link{distri_sp}}, \code{\link{test_sp_effectif}}, \code{\link{test_ope_lotTyl}}.
}
\examples{
final_result <- join_Testresult(
data = data_IDF,
pdf = FALSE,
csv = FALSE,
option = 2,
file.list = c("result_Lar", "result_dist", "result_DS", "result_TempJanv",
              "result_profondeur", "result_longueur")
              )
}
