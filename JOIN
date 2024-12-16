# SQL JOIN Clause

A **JOIN** clause is used to combine rows from two or more tables, based on a related column between them.

### Example Tables

#### "Orders" Table

| OrderID | CustomerID | OrderDate   |
|---------|------------|-------------|
| 10308   | 2          | 1996-09-18  |
| 10309   | 37         | 1996-09-19  |
| 10310   | 77         | 1996-09-20  |

#### "Customers" Table

| CustomerID | CustomerName                          | ContactName   | Country   |
|------------|---------------------------------------|---------------|-----------|
| 1          | Alfreds Futterkiste                  | Maria Anders  | Germany   |
| 2          | Ana Trujillo Emparedados y helados   | Ana Trujillo  | Mexico    |
| 3          | Antonio Moreno Taquería              | Antonio Moreno| Mexico    |

### Relationship Between Tables

The `CustomerID` column in the **Orders** table refers to the `CustomerID` in the **Customers** table. This column establishes the relationship between the two tables.

---

### SQL INNER JOIN Example

The following SQL statement uses an **INNER JOIN** to select records with matching values in both tables:

```sql
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

### Output

The query will produce results like the following:

| OrderID | CustomerName                          | OrderDate   |
|---------|---------------------------------------|-------------|
| 10308   | Ana Trujillo Emparedados y helados   | 9/18/1996   |
| 10365   | Antonio Moreno Taquería              | 11/27/1996  |
| 10383   | Around the Horn                      | 12/16/1996  |
| 10355   | Around the Horn                      | 11/15/1996  |
| 10278   | Berglunds snabbköp                   | 8/12/1996   |

# Different Types of SQL JOINs

In SQL, there are several types of JOINs, each serving a specific purpose when combining rows from two or more tables. Here are the main types of JOINs:

### 1. INNER JOIN
- **Description**: Returns records that have matching values in both tables.
- **Use Case**: Retrieve only the rows where there is a match between the tables.

---

### 2. LEFT (OUTER) JOIN
- **Description**: Returns all records from the left table and the matched records from the right table. If no match is found, NULL values are returned for columns from the right table.
- **Use Case**: Get all rows from the left table, regardless of matches in the right table.

---

### 3. RIGHT (OUTER) JOIN
- **Description**: Returns all records from the right table and the matched records from the left table. If no match is found, NULL values are returned for columns from the left table.
- **Use Case**: Get all rows from the right table, regardless of matches in the left table.

---

### 4. FULL (OUTER) JOIN
- **Description**: Returns all records when there is a match in either the left or right table. If there is no match, NULL values are returned for unmatched columns from either table.
- **Use Case**: Combine all rows from both tables, including unmatched rows.

---

These SQL commands allow you to implement the different types of JOINs based on your query requirements.
