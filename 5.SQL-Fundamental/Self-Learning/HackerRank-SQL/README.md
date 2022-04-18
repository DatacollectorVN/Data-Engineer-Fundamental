# Data-Engineer-Fundamental
This folder contains all my-own self-learning about SQL.

# Hacker Rank SQL:
*NOTE:* All SQL solutions, I code with MySQL tool.
## Problem 1: Pivot table
Source [here](https://www.hackerrank.com/challenges/occupations/problem).

## Problem 2: Binary Searching Tree
Source [here](https://www.hackerrank.com/challenges/binary-search-tree-1/problem).

To identify the node type of Binary Tree:
+ **Root:** If the node have the *NULL* value in parent node (P) column.
+ **Inner:** If the node have duplicate values in P column.
+ **Leaf:** Other cases.

## Problem 3: Work with multiple-tables
Source [here](https://www.hackerrank.com/challenges/the-company/problem)

Cause many tables have duplicate values, so we must to use `COUNT(DISTINCT <column_name>)`.

## Problem 4: Manhattan Distance
Source [here](https://www.hackerrank.com/challenges/weather-observation-station-18/problem).

**Manhattan Distance:** The taxicab distance (or Manhattan distance) between two vectors p, q, in an n-dimensional real vector space with fixed **Cartesian coordinate system**, is the sum of the lengths of the projections of the line segment between the points onto the coordinate axes - Wikipedia.

![plot](https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/Manhattan_Distance.png?raw=true)

*Note:* If we round value each operator such as 

`ROUND(ABS(MAX(LAT_N)) - MIN(LAT_N)), 4) + ROUND(ABS(MAX(LONG_W) - MIN(LONG_W)), 4)` 

You will get wrong answer.

## Problem 5: Euclidean Distance
**Euclidean Distance:** In the Euclidean plane, let point p have Cartesian coordinates(p1, p2) and let point q have coordinates (q1, q2) - Wikipedia. 

![plot](https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/Euclidean_Distance.png?raw=true)

*Note:* In this problem, I use the same table from *Problem4*.

## Problem 6: Calculate Median
**Median:** The median is the value separating the higher half from the lower half of a data sample, a population, or a probability distribution - Wikipedia. 

To calculate median, following these steps:
+ Sorting ascedning order of data sample.
+ If \# data sample is odd, then the median value is the middle value.
+ If \# data sample is even, then the medial value is the average couple of middle values.

*See example in figure below:*

![plot](https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/median.png?raw=true)

Based on the characteristics of median, we will compute easily when we have the index of table (after sorting ascendingly the target column). 
So we create the *Virtual table* by the reuslt of query (see in `Problem6/get_index.sql`) and apply this sub-query into the **SELECT ...FROM \<subquery>** (see in `Problem6/solution.sql`).

*Other solution:* I see some people apply the magic way by two sub-queries to create the *Virtual table*. See in `Problem6/other_solution.sql`

*Note:* In this problem, I use the same table from *Problem4*.