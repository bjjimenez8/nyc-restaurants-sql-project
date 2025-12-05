-- 1. View the entire nomnom table
SELECT *
FROM nomnom;

-- 2. Find the distinct neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- 3. Find the distinct cuisine types
SELECT DISTINCT cuisine
FROM nomnom;

-- 4. List all Chinese restaurants
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- 5. Restaurants with reviews 4 and above
SELECT *
FROM nomnom
WHERE review >= 4;

-- 6. Fancy dinner: Italian and $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- 7. Restaurant containing the word "meatball"
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- 8. Delivery options in Midtown, Downtown, or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

-- 9. Restaurants with a pending (NULL) health grade
SELECT *
FROM nomnom
WHERE health IS NULL;

-- 10. Top 10 restaurants by review score
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- 11. Categorize review scores using CASE
SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS rating_category
FROM nomnom;
