CREATE TABLE tblEnemy(
    EnemyId INT PRIMARY KEY,
    EnemyName VARCHAR(255),
    Description VARCHAR(255)
);
CREATE TABLE tblAuthor(
	AuthorId INT PRIMARY KEY,
	AuthorName VARCHAR(255)
);
CREATE TABLE tblDoctor(
	DoctorId INT PRIMARY KEY,
	DoctorNumber INT,
	DoctorName VARCHAR(255),
	BirthDate DATE,
	FirstEpisodeDate DATE,
	lastEpisodeDate DATE
);
CREATE TABLE tblCompanion(
	CompanionId INT PRIMARY KEY,
	CompanionName VARCHAR(255),
	WhoPlayed VARCHAR(255)
);

CREATE TABLE tblEpisode(
	EpisodeId INT PRIMARY KEY,
	SeriesNumber INT,
	EpisodeNumber INT,
	EpisodeType VARCHAR(255),
	Title VARCHAR(255),
	EpisodeDate DATE,
	AuthorId INT NOT NULL,
	DoctorId INT NOT NULL,
	Notes VARCHAR(255)
);


CREATE TABLE tblEpisodeEnemy(
	EpisodeEnemyId INT PRIMARY KEY,
	EpisodeId INT NOT NULL,
	EnemyId INT NOT NULL
);

CREATE TABLE tblEpisodeCompanion(
	EpisodeCompanionId INT PRIMARY KEY,
	EpisodeId INT NOT NULL,
	CompanionId INT NOT NULL
);

ALTER TABLE tblEpisodeEnemy
ADD CONSTRAINT FK_EpisodeEnemy_EpisodeId FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),
CONSTRAINT FK_EpisodeEnemy_EnemyId FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId);

ALTER TABLE tblEpisode
ADD CONSTRAINT FK_Epidoe_DoctorId FOREIGN KEY(DoctorId) REFERENCES tblDoctor(DoctorId),
CONSTRAINT FK_Epidoe_AuthorId FOREIGN KEY(AuthorId) REFERENCES tblAuthor(AuthorId);

ALTER TABLE tblEpisodeCompanion
ADD CONSTRAINT FK_EpisodeCompanion_EpisodeId FOREIGN KEY (EpisodeID) REFERENCES tblEpisode(EpisodeID),
CONSTRAINT FK_EpisodeCompanion_CompanionId FOREIGN KEY (CompanionID) REFERENCES tblCompanion(CompanionID);
