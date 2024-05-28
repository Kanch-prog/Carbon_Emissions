select * from emissions;

-- Find the Most Recent Year in the Dataset

select max(emission_year) AS most_recent_year from emissions;

-- Calculate the Total Emissions for Each Industry in the Most Recent Year

WITH RecentYear AS (
    SELECT MAX(emission_year) AS most_recent_year
    FROM emissions
)

SELECT 
    industry,
    SUM(emission_amount) AS total_emissions
FROM 
    emissions, RecentYear
WHERE 
    emission_year = RecentYear.most_recent_year
GROUP BY 
    industry
ORDER BY 
    total_emissions DESC;

-- filter top emitting industries

WITH RecentYear AS (
    select max(emission_year) as most_recent_year
    from emissions
),

indutryEmissions AS (
    select
        industry,
        sum(emission_amount) as total_emissions
    FROM    
        emissions, RecentYear
    WHERE 
        emission_year = RecentYear.most_recent_year
    GROUP BY 
        industry
)

SELECT
    industry,
    total_emissions
FROM 
    indutryEmissions
ORDER BY
    total_emissions DESC
LIMIT
    10;
