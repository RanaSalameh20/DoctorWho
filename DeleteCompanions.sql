DELETE c
FROM tblCompanion c
LEFT JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
WHERE ec.CompanionId IS NULL;


DELETE FROM tblCompanion
WHERE CompanionId NOT IN (
    SELECT CompanionId
    FROM tblEpisodeCompanion
);
