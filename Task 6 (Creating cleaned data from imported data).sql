SELECT * FROM task_6.`dataset- superstore (2015-2018)`;

/*Create a cleaned table with only relevant columns for analysis*/
CREATE TABLE task_6.cleaned_orders AS
SELECT
    `Order ID` AS order_id,
    `Order Date` AS order_date,
    `Product ID` AS product_id,
    Sales,
    Profit,
    Discount,
    Segment,
    Region,
    Category,
    `Sub-Category` AS sub_category
FROM task_6.`Dataset- Superstore (2015-2018)`;



