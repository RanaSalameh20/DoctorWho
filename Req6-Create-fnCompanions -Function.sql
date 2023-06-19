CREATE FUNCTION dbo.fnCompanions (@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN
 
    DECLARE @CompanionList VARCHAR(255) = '';
    
    SELECT @CompanionList = @CompanionList + c.CompanionName + ', '
    FROM tblCompanion c
    JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
    WHERE ec.EpisodeId = @EpisodeId;
    
    RETURN @CompanionList;
END;

SELECT dbo.fnCompanions(2);
	