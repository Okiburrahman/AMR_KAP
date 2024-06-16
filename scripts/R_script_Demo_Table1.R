library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(dplyr)
install.packages("easystats")
library(easystats)

#importing the data
data <- read_excel("clean_data/AMR_Parental_KAP_AD_preprocessed.xlsx")
view(data)


#demographic characteristics(table-1)
data |>
  select(1:11) |>
  tbl_summary() |> 
  as_gt() |> 
  gtsave("table/table1_demographic characteristics.docx")

