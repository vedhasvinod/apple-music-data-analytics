-- analysis_queries.sql
-- Extracted automatically from Final_AppleMusicProject.ipynb

-- Query 1 (from code cell #37)
SELECT
    strftime('%w', event_end_timestamp) AS weekday_num,
    strftime('%Y-%m-%d', event_end_timestamp) AS date,
    COUNT(*) AS play_count
FROM plays
WHERE event_end_timestamp IS NOT NULL
GROUP BY weekday_num, date
ORDER BY date;
