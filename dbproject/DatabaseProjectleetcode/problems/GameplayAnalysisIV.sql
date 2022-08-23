SELECT cast(COUNT(DISTINCT b.player_id) / (COUNT(DISTINCT a.player_id)  * 1.0) as DECIMAL(10,2)) as fraction FROM
(
select player_id, MIN(event_date) as event_date from activity
GROUP BY player_id
) AS A
left JOIN Activity B ON a.player_id = b.player_id AND DATEADD(DAY, 1, a.event_date) = b.event_date


