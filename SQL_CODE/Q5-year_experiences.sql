.headers on
.open nba.db

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
