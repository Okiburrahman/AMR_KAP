library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(dplyr)
library(easystats)
library(readxl)
library(gtsummary)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
library(gt)
library(readr)
library(naniar)
data <- read_excel("clean_data/AMR_Parental_KAP_AD_preprocessed.xlsx")
view(data)

mv <- lm(Practice_Level~Parent’s age (years)+Parent’s sex+Parent’s education level, 
                 data = data)

data|>
  select(Knowledge_Level,1:9) |>
  tbl_summary(by=Knowledge_Level ) |>
  add_overall() |>
  add_p() |>
  bold_p(t=0.05) |>
  as_gt() |>
  gtsave("table/table4_asociation_2G.docx")

data|>
  select(Knowledge_Level,1:9) |>
  tbl_summary(by=Knowledge_Level ) |>
  add_overall() |>
  add_p() |>
  bold_p(t=0.05) |>
  as_gt() |>
  gtsave("table/table4_asociation_2G.docx")
