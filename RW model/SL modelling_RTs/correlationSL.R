rm(list = ls())

# instal and load libraries
if(!require('pacman')) install.packages('pacman')
pacman::p_load('readr', 'data.table', 'plyr', "ez", "ggplot2", "cowplot", "lmerTest", "lme4", "dplyr")

library(tidyverse)
setwd(paste('G:/RewSL EEG/Analysis/4 Modellin RW', sep = ''))
db_sim <- read_csv("simulated_RS_all_participants.csv")

tot_trial<- ddply(db_sim, ~ participant, summarise, tot_trial = length(participant))

#dataset for correlation
cor_data<- subset(db_sim, select = c("participant", "real_RS", "simulated_RS"))


cor_results <- cor_data %>%
  group_by(participant) %>%
  summarise(
    Correlation = cor(real_RS, simulated_RS, use = "complete.obs"),
    p_value = cor.test(real_RS, simulated_RS)$p.value,
    .groups = 'drop'
  )
