UPDATE tblEpisode
SET Title = CONCAT(Title, '_CANCELLED')
WHERE EpisodeId IN (
    SELECT EpisodeId
    FROM tblEpisode
    WHERE DoctorId IS NULL
);
