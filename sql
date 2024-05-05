-- 1. What are all different subjects for which Udemy is offering courses?
SELECT DISTINCT subject FROM courses;

-- 2. Which subject has the most number of courses?
SELECT subject, COUNT(*) AS course_count
FROM courses
GROUP BY subject
ORDER BY course_count DESC
LIMIT 1;

-- 3. Show all the courses which are free of cost
SELECT *
FROM courses
WHERE is_paid = 'False';

-- 4. Show all the courses which are paid
SELECT *
FROM courses
WHERE is_paid = 'True';

-- 5. Which are the top selling courses?
SELECT course_title, num_subscribers
FROM courses
ORDER BY num_subscribers DESC
LIMIT 10;

-- 6. What are the least selling courses?
SELECT course_title, num_subscribers
FROM courses
ORDER BY num_subscribers ASC
LIMIT 10;

-- 7. Show all courses of graphic design where the price is below 100
SELECT *
FROM courses
WHERE subject = 'Graphic Design' AND price < 100;

-- 8. List out all the courses that are related to Python
SELECT *
FROM courses
WHERE course_title LIKE '%Python%';

-- 9. What are courses that were published in the year 2015?
SELECT *
FROM courses
WHERE EXTRACT(YEAR FROM published_timestamp) = 2015;

-- 10. What are the max number of subscribers for each level of the course?
SELECT level, MAX(num_subscribers) AS max_subscribers
FROM courses
GROUP BY level;
