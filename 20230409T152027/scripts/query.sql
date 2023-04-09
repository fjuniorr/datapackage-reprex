SELECT date.yearmonth, SUM(sales.total_price) as total_sales
FROM sales
JOIN date ON sales.date_id = date.id
GROUP BY date.yearmonth;
