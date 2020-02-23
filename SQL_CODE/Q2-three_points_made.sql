.headers on
.mode csv
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/NBA_season1718_salary.csv salary
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/nba_team_stats_00_to_18.csv team_stats
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/player_data.csv player_info
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/Seasons_Stats.csv player_stats

SELECT Tm, Player,"3POINTS" FROM
(SELECT Tm,Player,"3P"+0 AS "3POINTS"
FROM player_stats
WHERE Year = 2017
ORDER BY Tm)
GROUP BY Tm
HAVING Max("3POINTS");
