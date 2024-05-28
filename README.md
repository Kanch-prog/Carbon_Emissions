Analyzing Industry Carbon Emissions

Product emissions make up more than 75% of global emissions. But which industries are the worst offenders?

Retrive the maximum(most year) year present in the dataset.
Then calculates the total emissions for each indusctry in the most recent year. it uses a CTE to find the most recent year, then joins emissions table with this CTE to filter data. and finally sums up the emission amounts for each industry and orders results by total emissions in descending order.
Then again uses a nother CTE to calculate total emissions for each industry in the most recent year and then selects the top 10 industries based on these emissions, ordering them by total emissions in descending order and limiting the results to 10 rows.

Basically the both results are the same showing Energy as the  highest emitter.
![Capture3](https://github.com/Kanch-prog/Carbon_Emissions/assets/121807277/fa47d067-ef4f-4d20-af00-d1362815d94b)
