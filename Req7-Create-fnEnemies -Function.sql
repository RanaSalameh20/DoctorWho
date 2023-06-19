CREATE FUNCTION dbo.fnEnemies (@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN
 
    DECLARE @EnemiesList VARCHAR(255) = '';
    
    SELECT @EnemiesList = @EnemiesList + e.EnemyName + ', '
    FROM tblEnemy e
    JOIN tblEpisodeEnemy ee ON e.EnemyId = ee.EnemyId
    WHERE ee.EpisodeId = @EpisodeId;
    
    RETURN @EnemiesList;
END;

SELECT dbo.fnEnemies(5);
	