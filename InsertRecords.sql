INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES
(1, 'Sawsan', 'Red Enemy'),
(2, 'Firas', 'Green Enemy'),
(3, 'Ahmad', 'Blue Enemy'),
(4, 'Ramy', 'Yellow enemy'),
(5, 'Rana', 'Pink Enemy');

INSERT INTO tblAuthor (AuthorId, AuthorName) VALUES
(1, 'Mohammad'),
(2, 'Huda'),
(3, 'Rula'),
(4, 'Lara'),
(5, 'Rami');
INSERT INTO tblDoctor (DoctorId, DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, lastEpisodeDate) VALUES
(1, 11, 'Doctor1', '1964-02-16', '2005-03-26', '2005-06-18'),
(2, 22, 'Doctor2', '1971-04-18', '2005-06-18', '2010-01-01'),
(3, 33, 'Doctor3', '1982-10-28', '2010-04-03', '2013-12-25'),
(4, 44, 'Doctor4', '1969-04-14', '2013-12-25', '2017-12-25'),
(5, 55, 'Doctor5', '1982-06-17', '2017-12-25', NULL);
INSERT INTO tblCompanion (CompanionId, CompanionName, WhoPlayed) VALUES
(1, 'Companion1', 'Ali'),
(2, 'Companion2', 'Kareem'),
(3, 'Companion3', 'Tim'),
(4, 'Companion4', 'Abdullah'),
(5, 'Companion4', 'Noor');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) VALUES
(1, 1, 1, 'Regular', 'Wedding', '2005-03-26', 1, 1, 'First episode in the first series'),
(2, 2, 4, 'NotRegular', 'Halloween', '2006-05-06',2, 2, null),
(3, 3, 11, 'Regular', 'The Eleventh Hour', '2010-04-03', 2,1, 'Best Episode'),
(4, 4, 2, 'NotRegular', 'Listen', '2014-09-13', 5, 1, null),
(5, 5, 1, 'Regular', 'The Woman Who Fell to Earth', '2018-10-07', 3, 4, 'First episode in the fifth series');

INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES
(1, 1, 1),
(2, 5, 2),
(3, 5, 3),
(4, 4, 4),
(5, 3, 2);

INSERT INTO tblEpisodeCompanion (EpisodeCompanionId, EpisodeId, CompanionId) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
