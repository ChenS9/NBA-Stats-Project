.headers on
.open nba.db

WITH FT_201317 AS
(SELECT Team_Name,Player,SUM(FT+0) AS total_FT,Year
FROM
(SELECT tn.Team_Name,ps.Player, ps.FT+0 AS FT, ps.Year
FROM player_stats AS ps
LEFT JOIN
team_names AS tn
ON tn.Team = ps. Tm)
WHERE Year >= 2013 AND Year <= 2017
GROUP BY Player
HAVING total_FT > 200)

SELECT ft.Team_Name, SUM(ts.W) AS Times_Win, SUM(ts.L) AS Times_Lose
FROM FT_201317 AS ft
LEFT JOIN
team_stats AS ts
ON ft.Team_Name = ts.Team
GROUP BY ft.Team_Name;
