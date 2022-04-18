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

## Problem 3: New companies
Source [here](https://www.hackerrank.com/challenges/the-company/problem)

Cause many table have duplicate value, so we must to use `COUNT(DISTINCT <column_name>)`.
