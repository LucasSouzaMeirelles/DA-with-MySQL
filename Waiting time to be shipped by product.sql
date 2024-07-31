select round(avg(datediff(O.shippedDate, O.orderDate))*24) as AvgDelTime, D.productCode
from orders O, orderdetails D
where O.orderNumber=D.orderNumber and O.shippedDate is not null
group by D.productCode;