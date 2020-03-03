.headers on
.open nba.db

SELECT DISTINCT s.Player,s.season17_18 + 0 as salaries,(pi.year_end - pi.year_start) AS experience_years, pi.college
FROM player_info AS pi
LEFT JOIN
salary AS s
on s.Player = pi.name
ORDER BY salaries DESC
limit 3;
