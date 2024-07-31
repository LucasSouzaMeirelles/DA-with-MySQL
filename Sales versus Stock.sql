select S.productName, S.TotalQ, S.TotalRev, P.warehouseCode, P.quantityInStock
from sales_by_product S, products P where S.productCode = P.productCode
order by S.TotalRev desc;