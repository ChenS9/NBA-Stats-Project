.headers on
.mode csv
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/NBA_season1718_salary.csv salary
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/nba_team_stats_00_to_18.csv team_stats
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/player_data.csv player_info
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/Seasons_Stats.csv player_stats

SELECT DISTINCT s.Player,s.season17_18 + 0 as salaries,(pi.year_end - pi.year_start) AS experience_years, pi.college
FROM player_info AS pi
LEFT JOIN
salary AS s
on s.Player = pi.name
ORDER BY salaries DESC
limit 3;
