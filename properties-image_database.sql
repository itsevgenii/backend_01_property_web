CREATE TABLE properties(
property_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
rooms INT,
property_type TEXT,
price INT,
description TEXT,
address TEXT,
location VARCHAR(565)
);
INSERT INTO properties (
rooms,
property_type,
price,
description,
address,
location
)
VALUES
(
3,
'detached',
300000,
'Located in a secluded private estate with off-street parking, gates on each side of the development (allowing a cut through to Bounds Green), the property presents a unique experience given the wonderful bio-diverse woodland in which it resides and its detached nature both symbolically and physically from the busy London lifestyle.',
'123 London road, Liverpool - NW2', 'Liverpool'
),
(
2,
'flat',
250000,
'A 2 bedroom second floor apartment located centrally in Wantage. The property offers a great location and the opportunity to get on to the housing ladder. The property has two bedrooms, and a sitting dining room, there is also no onward chain.',
'456 Oak road, London - SW', 'London'
);
CREATE TABLE images(
image_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
property_id INT REFERENCES properties(property_id),
image TEXT
);
INSERT INTO images (
property_id,
image
)
VALUES (
1,
'https://i.imgur.com/KopAGQP.png'
),
(
1,
'https://i.imgur.com/SveUEzQ.png'
),
(
1,
'https://i.imgur.com/0neJScN.png'
),
(
1,
'https://i.imgur.com/33G9oRE.png'
),
(
2,
'https://i.imgur.com/SIsvh2r.png'
),
(
2,
'https://i.imgur.com/ehSfrjQ.png'
),
(
2,
'https://i.imgur.com/NKyoFOF.png'
),
(
2,
'https://i.imgur.com/BIBv60x.png'
);
