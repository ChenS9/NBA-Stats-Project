## NBA-Stats-Project
This project implements SQL queries, cardinality estimation and ER-Diagram, using 5 NBA stats datasets.
Data sources:https://www.kaggle.com/drgilermo/nba-players-stats#
            https://www.kaggle.com/mharvnek/nba-team-stats-00-to-18

To run this project's code, run `sqlite3` in the `SQL_CODE` directory and execute `.read 00-import-data.sql`.
Then `.read` the desired SQL question file names.

## Introduction
This project contains five datasets, providing us with information about personal information and performance of each player and the performance of NBA teams.

## Project Details
In this project, you will write SQL queries to answer some questions, you will draw a RA plan and do the cardinality estimation on a particular question, and you will draw a ER-Diagram to connect four tables. 

For each question:
(1)Wirte down your intuitions about the question(When you first read the question, don't rush straight to solve it,take a minute to think about what's your feeling when you first read this problem ,how do you want to solve this problem,In how many ways can you solve this problems and which method could be the best one, what outcomes are you expecting to get,etc.);  

(2)Write down the patterns you recognized in this problems according to what you have learnt and experienced, do these problems have some particular common patterns? Can you solve the problems more efficiently with recognization of these patterns?  

(3)Write down how others say about these questions and how will they solve these problems if you have partners or instuctors on this project.With their information, can you solve these problems faster or more efficiently?  

## Questions
1.Find the experience years and university of top3  players in each team who has the top 3 highest salary in Season 2017-2018.  

2.Find the player with the most three points made in each team in the year of 2017.  

3.Find out the times of win and lose in  of teams in which the sum of free throw made by each player greater than 200 from 2013-2017, the output must be the whole team name instead of the shortened form.

4.Draw a RA plan and do cardinality estimation on finding out the sum of the experience years of each player in each team only for teams that have won more than 5 games in season2017-18.   

5.Find out the experience years of each player in each team, which won the game more than lost the game in season2016-17. 

6.Draw a ER-Diagram of five tables.

