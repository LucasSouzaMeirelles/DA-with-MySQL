select sum(P.quantityInStock), P.warehouseCode, W.warehouseName, W.warehousePctCap
from products P, warehouses W where P.warehouseCode = W.warehouseCode
group by P.warehouseCode;