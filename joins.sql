#1
SELECT dog_owners.name, dog_owners.dog_name
FROM dog_owners
JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);

#2
SELECT lost_dog_collars.dog_name
FROM lost_dog_collars
LEFT JOIN dog_owners
ON (lost_dog_collars.dog_name = dog_owners.dog_name)
WHERE dog_owners.dog_name IS NULL;

#3
SELECT lost_dog_collars.id, lost_dog_collars.dog_name, dog_owners.id, dog_owners.name
FROM dog_owners
LEFT JOIN lost_dog_collars
ON lost_dog_collars.dog_name = dog_owners.dog_name;

#4
SELECT dog_owners.id, dog_owners.name, lost_dog_collars.id, lost_dog_collars.dog_name
FROM lost_dog_collars
RIGHT JOIN dog_owners
ON (lost_dog_collars.dog_name = dog_owners.dog_name);
