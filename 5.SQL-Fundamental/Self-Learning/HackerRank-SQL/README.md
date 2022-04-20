# Data-Engineer-Fundamental
This folder contains all my-own self-learning about SQL.

# Hacker Rank SQL:
*NOTE:* All SQL solutions, I used with MySQL tool.
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
Source [here](https://www.hackerrank.com/challenges/weather-observation-station-19/problem).

**Euclidean Distance:** In the Euclidean plane, let point p have Cartesian coordinates(p1, p2) and let point q have coordinates (q1, q2) - Wikipedia. 

<img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/Euclidean_Distance.png?raw=true" alt="drawing" width="300"/>

*Note:* In this problem, I used the same table from *Problem4*.

## Problem 6: Calculate Median
Source [here](https://www.hackerrank.com/challenges/weather-observation-station-20/problem).

**Median:** The median is the value separating the higher half from the lower half of a data sample, a population, or a probability distribution - Wikipedia. 

To calculate median, following these steps:
+ Sorting ascedning order of data sample.
+ If \# data sample is odd, then the median value is the middle value.
+ If \# data sample is even, then the medial value is the average couple of middle values.

*See example in figure below:*
<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/median.png?raw=true" alt="drawing" width="500"/>
</p>

Based on the characteristics of median, we will compute easily when we have the index of table (after sorting ascendingly the target column). 
So we create the *Virtual table* by the reuslt of query (see in `Problem-6/get_index.sql`) and apply this sub-query into the **SELECT ...FROM \<subquery>** (see in `Problem-6/solution.sql`).

*Other solution:* I see some people apply the magic way by two sub-queries to create the *Virtual table*. See in `Problem-6/other_solution.sql`

*Note:* In this problem, I used the same table from *Problem4*.

## Problem 7: Condition (IF or CASE WHEN statement)
Source [here](https://www.hackerrank.com/challenges/the-report/problem).

+ Use `IF()`, see in `Problem-7/solution.sql`.
+ Use `CASE WHEN`, see in `Problem-7/other_solution.sql`.

## Problem 8: GROUP BY and JOIN with multiple tables - 1
Source [here](https://www.hackerrank.com/challenges/contest-leaderboard/problem)

*Explanation:*
+ In the **Submissions** table, it have multiple duplication of both *hacker_id* and *challenge_id* columns because some hacker want to improve their score such as *hacker_id* = 4806 and *challenge_id* = 49593 have twice *score* with the second *scorce* improves from 32 to 76. That's why we must create the *Virtual table* from **Submissions** table by GROUP BY *hacker_id* and *challenge_id*.
+ Combine 2 tables *Virtual table* and **Hackers** table by INNER JOIN with *Foriegn Key* is *hacker_id*. See my own [document](https://docs.google.com/document/d/1fOvsIbR195h66QcRj8iDAQg_InL9b7Lwc-Kz-2E6wOg/edit#heading=h.p7621eiw65uu) to understand the *Foriegn Key*.
+ After combining 2 tables, have a table with multiple duplication of values in *hacker_id* and *name* columns because each hacker solve many challegenes. Therefore, we group both 2 column by GROUP BY and add options HAVING \<condition> and ORDER BY \<column>.

*Note:* The sorting algorithm in ORDER BY have the priority rules with ORDER BY \<*col_1*>, \<*col_2*>. The algorithm will priority to sort the \<*col_1*> first.

## Problem 9: GROUP BY and JOIN with multiple tables - 2
Source [here](https://www.hackerrank.com/challenges/full-score/problem)

*Explanation:*
+ Integrate all fields that we need, use INNER JOIN with 4 tables - See the figure below. 

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/Inner_Join.png?raw=true" alt="drawing" width="600"/>
</p>

*Note:* In the requirement, *queries the hackers who achieved full scores*. Therefore, we apply INNER JOIN between *Virtual table* (inside red rectangle dash line) and *Difficulty* table with 2 columns - *dificulty_level* and *score* column.

+ To query the hacker achieved full scores *for more than one challegne*, we applied COUNT() > 1.

## Problem 10: GROUP BY and JOIN with multiple tables - 3 (Hard level)
Source [here](https://www.hackerrank.com/challenges/interviews/problem)

*Explanation:*
+ We generate 3 *virtual tables* for solving this problem. First *virtual table* contains all necessary fields from 3 tables *Contest*, *Colleges* and *Challenges*. Second *virtual table* by transforming the *View_Stats* table with GROUP BY statement to calculate total of value. Third *virtual table* by transforming the *Submission_Stats* table with GROUP BY satemet to calculate total of value.
+ Concatenate 3 *virtual tables* above and use HAVING and ORDER BY to statisfy the requirements.

## Problem 11: DATE data type (Hard level)
Source [here](https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem)

*Explaination:*

Based on the requirements, we know the difficulty problem is finding *number of hacker who submit everyday*. Read the sample table and sample output, we understand *submit everyday* mean the hacker must submit every day if miss only one day then this hacker is not incuded.

The requirments have 3 independent problems that's we solve each problem independently. In this explantion, I just explain the problem to calculate *number of hacker who submit everyday*. Follow our steps:

- Prepare 3 *virtual tables*. First table queries the distinct *submission_date* that table is used as the basement. Second table is used for combining with first table to generate the query results all information in the day. Third table used for combing with first table to generate the query results all information in the past of the day.
- Result of first and second table. See in `Problem-11/no_hackers_submit_each_day.sql`:

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/VT1_and_VT2.png?raw=true" alt="drawing" width="600"/>
</p>

- Result of first and third table. See in `Problem-11/no_hackers_submit_each_day.sql`:

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/VT1_and_VT3.png?raw=true" alt="drawing" width="600"/>
</p>

- Result of first, second and third table and use DATEDIFF(). See in `Problem-11/no_unquie_hacker_submit_everyday.sql`:

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-Fundamental/blob/master/5.SQL-Fundamental/Self-Learning/HackerRank-SQL/Public-imgs/VT1_VT2_and_VT3.png?raw=true" alt="drawing" width="600"/>
</p>

Other requirement, see in my solution `Problem-11/solution.sql`.