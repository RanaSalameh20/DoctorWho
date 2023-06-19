UPDATE tblEpisode
SET Title = CONCAT(Title, '_CANCELLED')
WHERE EpisodeId IN (
    SELECT EpisodeId
    FROM tblEpisode
    WHERE DoctorId IS NULL
);

--refactored to more simple query
UPDATE e
SET Title = CONCAT(Title, '_CANCELLED')
FROM tblEpisode e
LEFT JOIN tblDoctor d ON e.DoctorId = d.DoctorId
WHERE d.DoctorId IS NULL;
