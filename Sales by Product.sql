select O.productCode, sum(O.quantityOrdered) as TotalQ, round(avg(O.priceEach)) as AvgP,
round(sum(O.quantityOrdered) * avg(O.priceEach)) as TotalRev, P.productName from orderdetails O, products P
where O.productCode = P.productCode
group by O.productCode
order by sum(O.quantityOrdered) * avg(O.priceEach) desc;