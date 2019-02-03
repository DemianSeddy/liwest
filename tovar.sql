select 
    orderdetails.price,
    orderdetails.points,
    orders.id,
    orders.partner_id,
    distributors.lastname,
    distributors.firstname,
    distributors.middlename,
    distributors.code,
    goods.name,
    goods.category,
    goods.code,
    goods.price0,
    goods.price1,
    goods.price2,
    goods.price3,
    goods.price6,
    goods.price5,
    goods.price4,
    goods.price8,
    goods.price7
from goods
   inner join orderdetails on (goods.id = orderdetails.good)
   inner join orders on (orderdetails.orderbranch = orders.id_branch) and (orderdetails.orderid = orders.id)
   inner join distributors on (orders.partner_id = distributors.id)
