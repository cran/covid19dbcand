## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  devtools::install_github("MohammedFCIS/covid19dbcand")

## ----eval=FALSE---------------------------------------------------------------
#  library(covid19dbcand)

## -----------------------------------------------------------------------------
head(covid19dbcand::Articles_Drug)

## -----------------------------------------------------------------------------
head(covid19dbcand::Drugs)

## -----------------------------------------------------------------------------
head(covid19dbcand::Drugs_Pathway_Drug)

## ----echo=FALSE---------------------------------------------------------------
DT::datatable(data(package = "covid19dbcand")[["results"]][,c(3,4)])

## ----echo=FALSE, fig.width=10, fig.height=10----------------------------------
library(data.tree)
library(networkD3)
# search for salts, international-brands
# Main node
build_drug_bank_tree <- function() {
  drug <- Node$new("Drugs")
  drug$AddChild("Groups")
  drug$AddChild("Pharmacology")
  references <- drug$AddChild("References")
  
  references$AddChild("Articles")
  references$AddChild("Books")
  references$AddChild("Links")
  references$AddChild("Attachments")
  
  drug$AddChild("Classification")
  drug$AddChild("Calculated Properties")
  drug$AddChild("Synonyms")
  drug$AddChild("Products")
  drug$AddChild("Mixtures")
  drug$AddChild("Packagers")
  drug$AddChild("Manufacturers")
  drug$AddChild("Prices")
  drug$AddChild("Categories")
  drug$AddChild("Affected Organisms")
  drug$AddChild("Dosages")
  drug$AddChild("ATC")
  drug$AddChild("AHFS")
  drug$AddChild("PDB Entries")
  drug$AddChild("Patents")
  drug$AddChild("PDB Entries")
  drug$AddChild("international_brands")
  drug$AddChild("salts")
  
  interactions <- drug$AddChild("Interactions")
  interactions$AddChild("Food")
  interactions$AddChild("Drugs")
  
  drug$AddChild("Sequences")
  drug$AddChild("Experimental Properties")
  drug$AddChild("External Identifiers")
  drug$AddChild("External Links")
  
  pathways <- drug$AddChild("Pathways")
  pathways$AddChild("Drugs")
  pathways$AddChild("Enzymes")
  
  reactions <- drug$AddChild("Reactions")
  reactions$AddChild("Reactions Enzymes")
  
  drug$AddChild("SNP Effects")
  drug$AddChild("SNP Adverse DRs")
  
  targets <- drug$AddChild("Targets")
  targets$AddChild("Actions")
  
  targets_references <- targets$AddChild("References")
  targets_references$AddChild("Articles")
  targets_references$AddChild("Books")
  targets_references$AddChild("Links")
  targets_references$AddChild("Attachments")
  
  targets_polypeptides <- targets$AddChild("Polypeptides")
  targets_polypeptides$AddChild("External Identifiers")
  targets_polypeptides$AddChild("GO Classifiers")
  targets_polypeptides$AddChild("PFAMS")
  targets_polypeptides$AddChild("Synonyms")
  
  enzymes <- drug$AddChild("Enzymes")
  enzymes$AddChild("Actions")
  enzymes_references <- enzymes$AddChild("References")
  enzymes_references$AddChild("Articles")
  enzymes_references$AddChild("Books")
  enzymes_references$AddChild("Links")
  enzymes_references$AddChild("Attachments")
  enzymes_polypeptides <- enzymes$AddChild("Polypeptides")
  enzymes_polypeptides$AddChild("External Identifiers")
  enzymes_polypeptides$AddChild("GO Classifiers")
  enzymes_polypeptides$AddChild("PFAMS")
  enzymes_polypeptides$AddChild("Synonyms")
  
  carriers <- drug$AddChild("Carriers")
  carriers$AddChild("Actions")
  carriers_references <- carriers$AddChild("References")
  carriers_references$AddChild("Articles")
  carriers_references$AddChild("Books")
  carriers_references$AddChild("Links")
  carriers_references$AddChild("Attachments")
  carriers_polypeptides <- carriers$AddChild("Polypeptides")
  carriers_polypeptides$AddChild("External Identifiers")
  carriers_polypeptides$AddChild("GO Classifiers")
  carriers_polypeptides$AddChild("PFAMS")
  carriers_polypeptides$AddChild("Synonyms")
  
  transporters <- drug$AddChild("Transporters")
  transporters$AddChild("Actions")
  transporters_references <- transporters$AddChild("References")
  transporters_references$AddChild("Articles")
  transporters_references$AddChild("Books")
  transporters_references$AddChild("Links")
  transporters_references$AddChild("Attachments")
  transporters_polypeptides <- transporters$AddChild("Polypeptides")
  transporters_polypeptides$AddChild("External Identifiers")
  transporters_polypeptides$AddChild("GO Classifiers")
  transporters_polypeptides$AddChild("PFAMS")
  transporters_polypeptides$AddChild("Synonyms")
  
  return(drug)
}

radialNetwork(
  ToListExplicit(build_drug_bank_tree(), unname = TRUE))

