-- Tickluck
-- All rights reserved

/*
	This is a small Explorational project on:
	- Apex Legends Game 
	- Player Winnings
	- Earnings 
	- Teams 
	- and many more
*/


-- Quick Look of the Data we have
-- No Data Cleaning is required

SELECT *
FROM [Apex Legends]..players_info

SELECT *
FROM [Apex Legends]..winnings_by_org_allYears

SELECT * 
FROM [Apex Legends]..winnings_by_player_allYears

-- SOME GLOBAL NUMBERS

-- Max Earnings By Each Team
SELECT team, MAX(earnings) as Max_Cash
FROM [Apex Legends]..winnings_by_org_allYears
GROUP BY team
ORDER BY 2 DESC

-- Create a View on Top 5 Winners for Each year
CREATE VIEW Top5_Teams_AllYears AS
SELECT earnings_rank, team, earnings, year
FROM [Apex Legends]..winnings_by_org_allYears
WHERE earnings_rank <= 5 

-- Create a View on Top 10 Players for each year
CREATE VIEW Top10_Players_AllYears AS
SELECT earnings_rank,nationality, player_name, earnings, year
FROM [Apex Legends]..winnings_by_player_allYears
WHERE earnings_rank <= 10