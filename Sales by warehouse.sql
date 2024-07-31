select TotalQ, TotalRev, warehouseCode, 
round(TotalRev/(select sum(TotalRev) from sales_by_product)*100,2) as RevShare
from
(select sum(S.TotalQ) as TotalQ, sum(S.TotalRev) as TotalRev, P.warehouseCode
from sales_by_product S, products P where S.productCode=P.productCode
group by P.warehouseCode
order by sum(S.TotalRev) desc) as sales_by_warehouse; 