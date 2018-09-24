# This is the code I used to clean up the course data. Note that it will not
# work for you automatically, not least because you are unlikely to have
# installed the janitor package. I just leave it here as an example.

library(tidyverse)
library(janitor)

# Load the data and clean up the column names. Note the use of `skip`  because
# of the junk at the top of the file.

x <- readxl::read_xlsx("class_enrollment_summary_by_term_09.21.18.xlsx", skip = 3) %>% 
  clean_names()

# I save the data in two ways, just for convenience. 

x %>% 
  write_csv("enrollment.csv")

x %>% 
  write_rds(path = "enrollment.rds")
