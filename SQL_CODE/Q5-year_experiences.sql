.headers on
.mode csv
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/NBA_season1718_salary.csv salary
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/nba_team_stats_00_to_18.csv team_stats
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/player_data.csv player_info
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/Seasons_Stats.csv player_stats
.import /Users/chensong/UW/2020winter/CSE414/NBA-Stats-Project/NBA_data/TeamNames.csv team_names

WITH win_lose AS
(SELECT TEAM,SUM(W) AS total_win,SUM(L) AS total_lose
FROM team_stats
WHERE SEASON = "2016-17"
GROUP BY TEAM
HAVING total_win > total_lose)


SELECT j.Player,j.team,(pif.year_end - pif.year_start) AS experience_years
FROM
(SELECT DISTINCT ps.Player,cwl.team,cwl.team_shorts,cwl.total_win,cwl.total_lose
FROM
(SELECT wl.team,tn.Team AS team_shorts,wl.total_win,wl.total_lose
FROM win_lose AS wl
LEFT JOIN
team_names AS tn
ON wl.TEAM = tn.Team_Name) AS cwl
LEFT JOIN
player_stats AS ps
ON cwl.team_shorts = ps.Tm
WHERE ps.Year >= 2016 and ps.Year <= 2017) AS j
LEFT JOIN
player_info AS pif
ON j.Player = pif.name
GROUP BY j.Player
;
