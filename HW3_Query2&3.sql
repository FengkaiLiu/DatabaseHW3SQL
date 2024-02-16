--the Music_Video table have two parameters, so just insert it with suitable values
INSERT INTO Music_Video (trackId, videoDirector) VALUES
(1, 'Director A'),
(2, 'Director B'),
(3, 'Director C'),
(4, 'Director D'),
(5, 'Director E'),
(6, 'Director F'),
(7, 'Director G'),
(8, 'Director H'),
(9, 'Director I'),
(10, 'Director J');
--Since we do not know the trackId of the "Voodoo" so we select the whole tracks track and find the id which have the exact name of "Voodoo"
INSERT INTO Music_Video (trackId, videoDirector)
VALUES ((SELECT trackId FROM tracks WHERE Name = 'Voodoo'), 'Director K');

