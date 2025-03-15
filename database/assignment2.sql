-- TASK ONE


-- Instruction 1

INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Instruction 2

UPDATE public.account
SET account_type = 'Admin'::account_type
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Instruction 3

DELETE FROM public.account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark' AND account_email = 'tony@starkent.com';

-- Instruction 4

UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Instruction 5

SELECT i.inv_make, i.inv_model, c.classification_name
FROM public.inventory i
JOIN public.classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

-- Instruction 6

UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
