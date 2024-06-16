library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(dplyr)
library(easystats)


#Major sources of information about antibiotic parents(table-2)
data |>
  select(47:55) |>
  tbl_summary() |> 
  as_gt() |> 
  gtsave("table/table2_Major sources of info_antibiotic_parents.docx")

