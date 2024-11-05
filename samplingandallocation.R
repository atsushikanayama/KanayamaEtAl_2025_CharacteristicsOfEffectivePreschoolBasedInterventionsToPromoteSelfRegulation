#setwd("path/to/your/directory")

install.packages("dplyr")
install.packages("sampling")

library(sampling)
library(dplyr)

set.seed(729)

studies <- read.csv("samplingandallocation_includedstudies.csv", stringsAsFactors = FALSE)

design_counts <- studies %>%
  group_by(Design) %>%
  summarise(Total = n()) %>%
  mutate(SampleSize = ceiling(0.20 * Total))

size_vector <- setNames(design_counts$SampleSize, design_counts$Design)

sampled <- strata(
  data = studies,
  stratanames = "Design",
  size = size_vector,
  method = "srswor",
  description = FALSE
)

selected <- getdata(studies, sampled) %>%
  select(StudyID, Design)

reviewer_map <- list(
  RCT = c("ElieChingYenYu", "MoekoIshikawa"),
  ClusterRCT = c("MeharKahlon", "RuoyingHe"),
  NRSI = c("PinalPMehta", "YiningShi")
)

selected <- selected %>%
  rowwise() %>%
  mutate(Reviewer = sample(reviewer_map[[Design]], 1)) %>%
  ungroup()

write.csv(selected, "samplingandallocation_includedstudies_assignedreviewers.csv", row.names = FALSE)