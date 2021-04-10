  #------------------Script Header----------------------------------######
# Date:         10.04.2021
# Author:       Yevheniy Skyra
# Filename:     Session4_git_YevheniySkyra.R
# Description:  Code to be submitted as an assigment for the KPLS session5 "Best practices in R".
#               Code aimes to adopt some of the practices presented during the session.
#  
# IMPRS Course: Key Practices for LAnguage Scientists Spring 2021  
#------------------------------------------------------------------------------------------------###  

    
#----- Library declarations----------------------------------------#####
library(package)
library(package)
library(package)
library(package)
#------------------------------------------------------------------#####

    
  
#----- Loading Data  ---------------------------------------------#####
setwd("directory")
data <- read.delim("data.csv", header = TRUE, sep = ",")
#------------------------------------------------------------------#####



#----- Data Processing --------------------------------------------#####
data <- data %>%
  select(ppID, condition, trial, RT) %>%
        mutate(sCondition = as.factor(condition), 
               sPpID      = as.factor(ppID),
               sTrial     = as.factor(trial),
               iRT        = as.numeric(RT))

data <- na.omit(data)
#-------------------------------------------------------------------#####


#----- Data Exploration --------------------------------------------#####

summary(data)
#------------------------------------------------------------------#####


#----- Data Analysis --------------------------------------------#####

anovaRTbycategory <- aov(RT ~category+error(ppID/category), data = analysis_anova)
summary(anovaRTbycategory)
#-----------------------------------------------------------------#####

