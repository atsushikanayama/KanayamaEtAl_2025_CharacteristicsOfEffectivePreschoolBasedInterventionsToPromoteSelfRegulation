# KanayamaEtAl_2025_CharacteristicsOfEffectivePreschoolBasedInterventionsToPromoteSelfRegulation

## Data Extraction and Allocation Procedure

### Overview

This repository contains the dataset and R script used for the two-stage allocation process in our systematic review. The process involves stratified random sampling and random assignment of studies to reviewers based on study design categories.

## Repository Contents

- **samplingandallocation_includedstudies.csv**: Original dataset containing all included studies.
- **samplingandallocation.R**: Integrated R script performing stratified sampling and reviewer allocation.
- **samplingandallocation_includedstudies_assignedreviewers.csv**: Output dataset with assigned reviewers.
- **README.md**: This file containing instructions and information.

## Setup

### 1. Set Working Directory

Replace `"path/to/your/directory"` with your actual directory path in the R script.

```R
setwd("path/to/your/directory")
```
### 2. Install Required Packages

Ensure you have the necessary packages installed by running the following commands in R:

```R
install.packages("dplyr")
install.packages("sampling")setwd("path/to/your/directory")
```

### 3. Read the dataset

Ensure you read "samplingandallocation_includedstudies.csv" stored in your working directry:

```R
install.packages("dplyr")
install.packages("sampling")setwd("path/to/your/directory")
```

### 4. Run the Script

Run the R script to perform stratified random sampling and assign reviewers.
```R
source(samplingandallocation.R)
```
This will generate "samplingandallocation_includedstudies_assignedreviewers" containing the StudyID, Design, and Reviewer for each selected study.

## Reproducibility

The script uses a fixed random seed (set.seed(729)) to ensure that the sampling and allocation processes are reproducible. To obtain different results, modify the seed value accordingly.

## Reproducibility

For any questions or further assistance, please contact Atsushi Kanayama at atsushikanayama@outlook.com.


