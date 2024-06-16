library(gtsummary)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
library(gt)
library(readr)
library(naniar)
library(tidyverse)
library(readxl)
install.packages("writexl")
library(writexl)
data <- read_excel("raw_data/assignment_data.xlsx")
View(data)
any(is.na())
miss_var_summary(data)
gg_miss_var(data)
is.na(data)
data <- most_frequent(df$Column7)
print(most_frequent_value)
#changing variables for "parents age"

data <- data |> 
  mutate( `Parent’s age (years)`= case_when(
    `Parent’s age (years)` == 1 ~ "< 25",
    `Parent’s age (years)` == 2 ~ "25-35",
    `Parent’s age (years)` == 3 ~ "36-45",
    `Parent’s age (years)` == 4 ~ "> 45",
  ))


#changing variables for "parents sex"
data <- data |> 
  mutate(`Parent’s sex` = case_when(
    `Parent’s sex`== 1 ~ "male",
    `Parent’s sex` == 2 ~ "female",
  ))


#changing variables for `Parent’s education level`
data <- data |> 
  mutate(`Parent’s education level` = case_when(
    `Parent’s education level` == 1 ~ "Primary School",
    `Parent’s education level` == 2 ~ "High School",
    `Parent’s education level` == 3 ~ "College",
    `Parent’s education level` == 4 ~ "Diploma",
    `Parent’s education level` == 5 ~ "Undergraduate",
    `Parent’s education level` == 6 ~ "Postgraduate",
    `Parent’s education level` == 7 ~ "No formal Education",
  ))

#changing variables for "Employment status"

data <-data |> 
  mutate(`Employment status` = case_when(
    `Employment status` == 1 ~ "Employed",
    `Employment status` == 2 ~ "Self employed",
    `Employment status` == 3 ~ "Not employed",
  ))

# Family type 

data <-data |> 
  mutate(`Family type` = case_when(
    `Family type` == 1 ~ "Nuclear family",
    `Family type` == 2 ~ "Single parent family",
    `Family type` == 3 ~ "Extended family",
  ))

#Your average household income per month (BDT)
data <-data |> 
  mutate(`Your average household income per month (BDT)` = case_when(
    `Your average household income per month (BDT)` == 1 ~ "Low",
    `Your average household income per month (BDT)` == 2 ~ "Middle",
    `Your average household income per month (BDT)` == 3 ~ "High",
  ))



#Child’s sex
data <- data |> 
  mutate(`Child’s sex` = case_when(
    `Child’s sex`== 1 ~ "male",
    `Child’s sex`== 2 ~ "female",
  ))

#Child’s age (years)
data <-data |> 
  mutate( `Child’s age (years)` = case_when(
    `Child’s age (years)`  < 5 ~ "< 5",
    `Child’s age (years)`  >= 5 &  `Child’s age (years)`  <= 9 ~ "5-9",
    `Child’s age (years)`  > 10 ~ "> 10",
  ))

#`Number of children`
data<- data |> 
  mutate(`Number of children` = case_when(
    `Number of children` == 1 ~ "1",
    `Number of children` == 2 ~ "2",
    `Number of children` >= 3 ~ ">= 3",
  ))



#Who is the leading child caregiver 
data <- data |> 
  mutate(`Who is the leading child caregiver at home?`  = case_when(
    `Who is the leading child caregiver at home?` == 1 ~ "Father",
    `Who is the leading child caregiver at home?` == 2 ~ "Mother",
    `Who is the leading child caregiver at home?` == 3 ~ "Grandfather",
    `Who is the leading child caregiver at home?` == 4 ~ "Grandmother",
    `Who is the leading child caregiver at home?`== 5 ~ "Others",
  ))


#`Are grandparents at home involved in treatment decisions when your child is ill?`

data<-data |> 
  mutate(  `Are grandparents at home involved in treatment decisions when your child is ill?` = case_when(
    `Are grandparents at home involved in treatment decisions when your child is ill?` == 1 ~ "Never",
    `Are grandparents at home involved in treatment decisions when your child is ill?`== 2 ~ "Sometimes",
    `Are grandparents at home involved in treatment decisions when your child is ill?` == 3 ~ "Often",
    `Are grandparents at home involved in treatment decisions when your child is ill?`== 4 ~ "Always",
  ))
  data <-data |> 
    mutate(`Knowledge_Level` = case_when(
    `Knowledge_Level` == 1 ~ "Poor",
    `Knowledge_Level` == 2 ~ "Moderate",
    `Knowledge_Level` == 3 ~ "Good",
  ))
  
  
  #exporting preprocessed data
  
  write_xlsx(data, "clean_data/AMR_Parental_KAP_AD_preprocessed.xlsx")
  





