select round(avg(D.AvgDelTime)) as AvgDelTime, P.warehouseCode from deltime_by_product D, products P
where D.productCode=P.productCode
group by P.warehouseCode
order by AvgDelTime;