# Getting and Cleaning Data - Course Assignment

## Objective

The purpose of this project is to collect, work with, and clean a database built
from the recordings of 30 subjects performing activities of daily living (ADL) 
while carrying a waist-mounted smartphone with embedded inertial sensors. The 
goal is to prepare tidy data that can be used for later analysis. 

A full description of the *Human Activity Recognition* experiment is available on the site where the data was
obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Using the Script

To use the script `run_analysis.R`, that gets and cleans the raw data and provides 
a tidy data set, it's assumed that the folder `/UCI HAR Dataset` with raw data is
unzipped into the working directory.

**Raw data:** https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run the script just start a session and load it 
```
> source('run_analysis.R')
```

## Understanding the Tidy Data Set

To understand the variables and transformations, please check the [CodeBook.md](https://github.com/soeirosantos/GettingAndCleaningData/blob/master/CodeBook.md) provided in 
this repository.
