# MLB Pitcher Usage R program


## Introduction

This baseball analyst project demonstrates how to use R to generate baseball reports in a simple matter. This project using a single 'main' r script to input/source different functions and data files based on user input.

This project is broken down into multiple parts: 
*  Generate data using the baseballr package (data_generation_script.Rmd) to populate the Data folder:
      -  player_lookup.csv
      -  game_lookup.csv
      -  pitcher.csv
*  Create multiple functions (pitcher_usage_function.R & pitch_load.R) to process and format pitcher usage data
*  Saves output and flags heavy workload - similar to the pitcher usage tables on Fangraphs
*  Create MainFile.R script which sources the functions in the Function folder and reads in the CSV files from the Data folder

## Data Generation

Three separate csv files were generated from the baseballr package. Note that for this example, these three files were generated from the 2022 MLB season. The columns for the three files are below:

player_lookup.csv
*  player_id
*  name
*  throws

game_lookup.csv
*  game_id
*  game_date
*  home_team_id
*  away_team_id

pitches.csv
*  game_id
*  pitch_no
*  at_bat_no
*  pitch_of_at_bat
*  inning
*  top_inning
*  pitcher_id
*  batter_id
*  velo

## Functions

pitch_load.R

This function produces the pitchers load over the previous 7-days. The function only takes in an end date and outputs a table with each row being a pitcher and the columns being the days. The last two columns are total pitch counts from the last 3 days and from the last 7 days. Pitcher's with heavy workloads (pitching in back-to-back days or three of the previous four) are flagged in red.



