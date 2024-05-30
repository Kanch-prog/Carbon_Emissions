# Industry Carbon Emissions Analysis

This project analyzes industry carbon emissions to identify which industries are the worst offenders. The data presented here represents the total emissions for various industries in the most recent year available.

## Data Overview

The table below shows the total emissions for each industry:

| **Industry**    | **Total Emissions**     |
|-----------------|-------------------------|
| Energy          | 2701.25                 |
| Manufacturing   | 2401.4000244140625      |
| Transportation  | 1750.2999877929688      |
| Agriculture     | 1050.3500061035156      |
| Technology      | 900.8999938964844       |

## Key Findings

- **Energy** is the highest emitter with a total emission of **2701.25** units.
- **Manufacturing** is the second highest emitter with **2401.40** units.
- **Transportation** comes next with **1750.30** units.
- **Agriculture** and **Technology** follow with **1050.35** and **900.90** units, respectively.

## Analysis Approach

1. **Data Retrieval**: The maximum (most recent) year present in the dataset is retrieved.
2. **Emissions Calculation**: The total emissions for each industry in the most recent year are calculated using a Common Table Expression (CTE) to find the most recent year, followed by joining the emissions table with this CTE to filter the data.
3. **Summing Emissions**: The emission amounts are summed up for each industry, and the results are ordered by total emissions in descending order.
4. **Top Emitters**: Another CTE is used to calculate total emissions for each industry in the most recent year, selecting the top industries based on these emissions, ordering them by total emissions in descending order, and limiting the results to the top 10 industries.

## Conclusion

This analysis identifies the **Energy** sector as the leading contributor to carbon emissions, followed by **Manufacturing**, **Transportation**, **Agriculture**, and **Technology**. This information is crucial for policymakers and businesses aiming to target the largest sources of emissions for reduction efforts.

## Usage

To reproduce the analysis, follow these steps:

1. Ensure you have the necessary data in the required format.
2. Run the provided code to calculate and visualize the emissions data.
3. Use the insights to inform policy or business decisions aimed at reducing carbon emissions.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgements

We would like to thank the contributors to this project and the sources of the data used in this analysis.
