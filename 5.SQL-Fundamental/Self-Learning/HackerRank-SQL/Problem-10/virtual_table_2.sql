USE hackerrank;
SELECT challenge_id, 
    SUM(total_views) AS total_views, 
    SUM(total_unique_views) AS total_unique_views
FROM view_stats GROUP BY challenge_id;