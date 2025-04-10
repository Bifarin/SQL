SELECT TOP(2) * FROM dbo.WO

SELECT TOP(10) HighProfileRisk FROM dbo.WO

EXEC sp_rename 'dbo.WO.HighProfileRisk', 'HighProfileRisk1', 'COLUMN';

SELECT CAST(HighProfileRisk AS VARCHAR) AS converted_column
FROM dbo.WO;

ALTER TABLE dbo.WO ADD HighProfileRisk_Text VARCHAR(255);

UPDATE dbo.WO 
SET HighProfileRisk_Text = CAST(HighProfileRisk1 AS VARCHAR(255));

EXEC sp_rename 'dbo.WO.HighProfileRisk_Text', 'HighProfileRisk', 'COLUMN';
