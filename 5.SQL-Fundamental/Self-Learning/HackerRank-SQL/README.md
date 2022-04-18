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

![plot](public-imgs/Manhattan_Distance.png)

*Note:* If we round value each operator such as 

`ROUND(ABS(MAX(LAT_N)) - MIN(LAT_N)), 4) + ROUND(ABS(MAX(LONG_W) - MIN(LONG_W)), 4)` 

You will get wrong answer.

## Problem 4: Euclidean Distance
**Euclidean Distance:** In the Euclidean plane, let point p have Cartesian coordinates(p1, p2) and let point q have coordinates (q1, q2). 

![plot](public-imgs/Euclidean_Distance.png)

*Note:* In this problem, I use the same table from *Problem4*.