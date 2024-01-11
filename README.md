### Requirements:
```
Develop a converter from a CSV file into a table of ASCII characters.
The first line of the file specifies the column types.
The following lines contain the data (with a semicolon as the delimiter).

Types:
int - an integer (right-aligned)
string - a string, string data is split into words and displayed in a column.
money - a currency unit, formatted with 2 decimal places and
a space as the thousands separator.

Example input data:

int;string;money
1;aaa bbb ccc;1000.33
5;aaaa bbb;0.001
13;aa bbbb;10000.00

Output of the script:

+-----------------+
| 1|aaa | 1 000,33|
|  |bbb |         |
|  |ccc |         |
+--+----+---------+
| 5|aaaa|     0,01|
|  |bbb |         |
+--+----+---------+
|13|aa  |10 000,00|
|  |bbbb|         |
+--+----+---------+

Requirements:

Use Object-Oriented Programming
Do not use standard libraries and functions for output formatting
Evaluation criteria:

Code readability
Class hierarchy
Optimal use of resources"
```

## Result:
`ruby execute.rb`
```
+-----------------------------------------------------------------+
|      1|aaa       |                1 000,33|  2|  3|      4|one  |
|       |bbb       |                        |   |   |       |two  |
|       |ccc       |                        |   |   |       |three|
|       |xxxxxxxxxx|                        |   |   |       |     |
|       |asdasdasd |                        |   |   |       |     |
|       |a         |                        |   |   |       |     |
+-------+----------+------------------------+---+---+-------+-----+
|      5|zzzzz     |                    0,01|111|222|    333|a    |
|       |pppp      |                        |   |   |       |b    |
|       |          |                        |   |   |       |c    |
+-------+----------+------------------------+---+---+-------+-----+
|     13|xxxx      |1 000 000 000 000 000,00|444|555|6666666|hello|
|       |yyyyy     |                        |   |   |       |world|
+-------+----------+------------------------+---+---+-------+-----+
|1232328|aa        |        1 000 000 000,43|  9|  8|      7|john |
|       |rrrr      |                        |   |   |       |doe  |
|       |sss       |                        |   |   |       |     |
+-------+----------+------------------------+---+---+-------+-----+
```


### `rspec spec/`

```
....................

Finished in 0.02036 seconds (files took 0.21902 seconds to load)
20 examples, 0 failures
```
