SELECT users.id as id, users.name as name, cities.name as city
FROM users
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro'