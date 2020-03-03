.headers on
.open nba.db

SELECT Tm, Player,"3POINTS" FROM
(SELECT Tm,Player,"3P"+0 AS "3POINTS"
FROM player_stats
WHERE Year = 2017
ORDER BY Tm)
GROUP BY Tm
HAVING Max("3POINTS");
