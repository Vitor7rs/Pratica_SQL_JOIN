-- Exercício 1

SELECT users.id as id, users.name as name, cities.name as city
FROM users
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro'


-- Exercício 2

SELECT t.id AS id, "uW".name AS writer, "uR".name AS recipient, t.message
FROM testimonials t
JOIN users "uW" ON t.id = "uW".id
JOIN users "uR" ON t.id = "uR".id


-- Exercício 3

SELECT u.id AS id, u.name AS name, c.name AS course, s.name AS school, e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30 AND e.status = 'finished'


-- Exercício 4

SELECT u.id AS id, u.name AS name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM experiences e
JOIN users u ON e."userId" = u.id
JOIN roles r ON e."roleId" = r.id
JOIN companies c ON e."companyId" = c.id
WHERE u.id = 50 AND e."endDate" IS NULL