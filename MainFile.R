############## Sources Functions from other scripts ##############
path <- setwd(dirname(rstudioapi::getSourceEditorContext()$path))
file1 <- "/Functions/input_data.R"
file2 <-"/Functions/pitch_load.R"
source(paste0(path,file1))
source(paste0(path,file2))
rm(file1, file2, installed_packages, libr, path)
##################################################################


# Testing Pitcher outputs 
# [[1]] = chart 
# [[2]] = csv file
pitch_load("2022-05-14")[[1]]
pitch_load("2022-05-14")[[2]]

pitch_load("2022-06-18")[[1]]
pitch_load("2022-06-18")[[2]]


pitch_load("2022-08-16")[[1]]
pitch_load("2022-08-16")[[2]]


