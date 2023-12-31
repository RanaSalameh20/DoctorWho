CREATE VIEW viewEpisodes AS
SELECT e.*,
       a.AuthorName AS Author, d.DoctorName AS Doctor, e.Notes,
       dbo.fnCompanions(e.EpisodeId) AS Companions,
       dbo.fnEnemies(e.EpisodeId) AS Enemies
FROM tblEpisode e
JOIN tblAuthor a ON e.AuthorId = a.AuthorId
JOIN tblDoctor d ON e.DoctorId = d.DoctorId;

SELECT * FROM viewEpisodes;
