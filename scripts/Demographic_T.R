library(readxl)
library(tidyverse)
library(gtsummary)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
library(gt)
library(readr)
data <- read_excel("E:/CHIRAL_INTERN/project_test/assignment_data.xlsx")
View(data)
library(naniar)
miss_var_summary(data)
gg_miss_var(data)
data|>
  select(1:11)|>
  tbl_summary(statistic= list(
    all_continuous()~ "{mean}({sd})" )) |>
  as_gt()|>
  gtsave("tables/tables1_demographic.docx")
