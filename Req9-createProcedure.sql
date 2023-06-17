CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN
    --companions
    SELECT TOP 3 c.CompanionName, COUNT(ec.CompanionId) AS CompanionAppearances
    FROM tblCompanion c
    JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
    GROUP BY c.CompanionName
    ORDER BY COUNT(ec.CompanionId) DESC;

    --enemies
    SELECT TOP 3 e.EnemyName, COUNT(ee.EnemyId) AS EnemyAppearances
    FROM tblEnemy e
    JOIN tblEpisodeEnemy ee ON e.EnemyId = ee.EnemyId
    GROUP BY e.EnemyName
    ORDER BY COUNT(ee.EnemyId) DESC;
END;

EXEC spSummariseEpisodes;


