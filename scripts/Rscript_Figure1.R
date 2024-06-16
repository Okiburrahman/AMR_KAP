install.packages("ggthemes")
install.packages("ggsci")

library(tidyverse)
library(ggthemes)
library(ggsci)
library(ggplot2)
library(readxl)
data <- read_excel("clean_data/AMR_Parental_KAP_AD_preprocessed.xlsx")
view(data)
#Antibiotic kills the bacteria
data |> 
  ggplot(aes(x = `Antibiotic kills the bacteria(Yes)` , fill =  `Antibiotic kills the bacteria(Yes)`)) +
  geom_bar() +
  labs(x = "Antibiotic kills the bacteria", 
       y = "Frequency", 
  )

ggsave("figures/Antibiotic kills the bacteria.png", dpi=600)



#Paracetamol is an antibiotic(No)
data|> 
  ggplot(aes(x = `Paracetamol is an antibiotic(No)`,fill =`Paracetamol is an antibiotic(No)` )) +
  geom_bar() +
  labs(x = "Paracetamol is an antibiotic(No)", 
       y = "Frequency", 
  )
ggsave("figures/Paracetamol is an antibiotic(No).png", dpi=600)

#Amoxicillin is an antibiotic(Yes)
data|> 
  ggplot(aes(x = `Amoxicillin is an antibiotic(Yes)`,fill =`Amoxicillin is an antibiotic(Yes)` )) +
  geom_bar() +
  labs(x = "Amoxicillin is an antibiotic(Yes)", 
       y = "Frequency",
  )    

ggsave("figures/Amoxicillin is an antibiotic(Yes).png", dpi=600)



#Azithromycin is an antibiotic(Yes)
data|> 
  ggplot(aes(x = `Azithromycin is an antibiotic(Yes)`,fill=`Azithromycin is an antibiotic(Yes)`))+
  geom_bar()
labs(x = "Azithromycin is an antibiotic(Yes)",
     y = "Frequency",
)    
ggsave("figures/Azithromycin is an antibiotic(Yes).png", dpi=600)



#Antibiotic kills the virus(No)
data|> 
  ggplot(aes(x = `Antibiotic kills the virus(No)`,fill =`Antibiotic kills the virus(No)` )) +
  geom_bar() +
  labs(x = "Antibiotic kills the virus(No)", 
       y = "Frequency",
  )    
ggsave("figures/`Antibiotic kills the virus(No)`.png", dpi=600)


#Antibiotics used to treat diarrhoea(Yes)

data|> 
  ggplot(aes(x = `Antibiotics used to treat diarrhoea(Yes)`,fill =`Antibiotics used to treat diarrhoea(Yes)` )) +
  geom_bar() +
  labs(x = "Antibiotics used to treat diarrhoea(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Antibiotics used to treat diarrhoea(Yes)`.png", dpi=600)




#Antibiotics are useful for flu and cough(No)
data|> 
  ggplot(aes(x = `Antibiotics are useful for flu and cough(No)`,fill =`Antibiotics are useful for flu and cough(No)` )) +
  geom_bar() +
  labs(x = "Antibiotics are useful for flu and cough(No)", 
       y = "Frequency",
  )    
ggsave("figures/Antibiotics are useful for flu and cough(No).png", dpi=600)




#Antibiotic resistant bacteria are difficult to treat(Yes)

data|> 
  ggplot(aes(x = `Antibiotic resistant bacteria are difficult to treat(Yes)`,fill =`Antibiotic resistant bacteria are difficult to treat(Yes)` )) +
  geom_bar() +
  labs(x = "Antibiotic resistant bacteria are difficult to treat(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Antibiotic resistant bacteria are difficult to treat(Yes)`.png", dpi=600)


#Misuse of antibiotics can lead to antibiotic resistant bacteria(Yes)
data|> 
  ggplot(aes(x = `Misuse of antibiotics can lead to antibiotic resistant bacteria(Yes)`,fill =`Misuse of antibiotics can lead to antibiotic resistant bacteria(Yes)` )) +
  geom_bar() +
  labs(x = "Misuse of antibiotics can lead to antibiotic resistant bacteria(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Misuse of antibiotics can lead to antibiotic resistant bacteria(Yes).png", dpi=600)


#Antibiotics can cause allergic reactions(Yes)

data|> 
  ggplot(aes(x =`Antibiotics can cause allergic reactions(Yes)`,fill =`Antibiotics can cause allergic reactions(Yes)`)) +
  geom_bar() +
  labs(x = "Antibiotics can cause allergic reactions(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Antibiotics can cause allergic reactions(Yes)`.png", dpi=600)


#Antibiotics can kill norrmal flora(Yes)
data|> 
  ggplot(aes(x =`Antibiotics can kill norrmal flora(Yes)`,fill =`Antibiotics can kill norrmal flora(Yes)`)) +
  geom_bar()+
  labs(x = "Antibiotics can kill norrmal flora(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Antibiotics can kill norrmal flora(Yes).png", dpi=600)




#Infectious disease are becoming difficult to treat with antibiotics(Yes)

data|> 
  ggplot(aes(x =`Infectious disease are becoming difficult to treat with antibiotics(Yes)`,fill =`Infectious disease are becoming difficult to treat with antibiotics(Yes)`)) +
  geom_bar()+
  labs(x = "Infectious disease are becoming difficult to treat with antibiotics(Yes)", 
       y = "Frequency",
  )    
ggsave("figures/Infectious disease are becoming difficult to treat with antibiotics(Yes).png", dpi=600)


