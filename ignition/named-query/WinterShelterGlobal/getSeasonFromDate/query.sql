---Determine the current, past and next season
DECLARE @thisMonth int = Month( :selectedDate)
DECLARE @thisYear varchar(4) = Year(:selectedDate)
DECLARE @thisSeasonStartYear varchar(4) = CASE WHEN @thisMonth > 6 THEN @thisYear ELSE (@thisYear - 1) END
---Determine the current, past and next season ID's
SELECT s.id,s.Seasons  FROM shelter.Seasons s WHERE s.Seasons like @thisSeasonStartYear + '%'