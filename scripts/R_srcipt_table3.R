#Level of knowledge, attitudes, and practices(table-3)
library(tidyverse)
library(readxl)
library(gtsummary)
library(gt)
library(dplyr)
library(easystats)

data <- read_excel("clean_data/AMR_Parental_KAP_AD_preprocessed.xlsx")
view(data)

data <-data |> 
  mutate (`Knowledge_Level` = case_when(
    `Knowledge_Level` == 1 ~ "Poor",
    `Knowledge_Level` == 2 ~ "Moderate",
    `Knowledge_Level` == 3 ~ "Good",
  ))
data <-data |> 
  mutate (`Attitude_Level` = case_when(
    `Attitude_Level` == 1 ~ "Negative",
    `Attitude_Level` == 2 ~ "Uncertain",
    `Attitude_Level` == 3 ~ "Positive",
  ))
data <-data |> 
  mutate (`Practice_Level` = case_when(
    `Practice_Level` == 1 ~ "Misuse",
    `Practice_Level` == 2 ~ "Good",
  ))


data |>
  select(69:71) |>
  tbl_summary() |> 
  as_gt() |> 
  gtsave("table/table3_Level of knowledge, attitudes, and practices.docx")
