SELECT 
    id 
    , [Type] = (CASE WHEN p_id IS NULL THEN 'Root' 
              WHEN id IN (SELECT DISTINCT p_id FROM Tree) THEN 'Inner'
              ELSE 'Leaf' END)
FROM Tree