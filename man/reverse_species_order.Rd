% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reverse_species_order.R
\name{reverse_species_order}
\alias{reverse_species_order}
\title{Reverse order of the species in an orthologs_df.}
\usage{
reverse_species_order(orthologs_df)
}
\arguments{
\item{orthologs_df}{orthologs_df dataframe. mutual best hits with genomic coordinates loaded with load_orthologs()}
}
\value{
dataframe composed of genomic coordinates and relative index of orthologs on both species
}
\description{
Returns an orthologs_df (data.frame) with reversed species order compared to the inputted orthologs_df.
sp1 becomes sp2 and the otherway around. It intends at facilitating the integration of more than just two datasets.
It outputs a data.frame shaped as following :
sp1.ID,sp1.Chr,sp1.Start,sp1.End,sp1.Index,sp2.ID,sp2.Chr,sp2.Start,sp2.End,sp2.Index
}
\examples{
# basic usage of reverse_species_order :

orthologs_table <- system.file("extdata","my_orthologs.tab",package="macrosyntR")

my_orthologs <- read.table(orthologs_table,header=TRUE)

my_orthologs_reversed <- reverse_species_order(my_orthologs)

}
\seealso{
\code{\link[=load_orthologs]{load_orthologs()}}
}
