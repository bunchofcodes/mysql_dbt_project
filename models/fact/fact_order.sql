select
a.order_id as order_number,
a.status as order_status,
a.comments as order_comments,
b.quantity_ordered as order_quantity,
b.price_item as order_price_each,
b.price_item * quantity_ordered as order_amount,
b.order_line_number as order_line_number
from {{ ref('stg_orders')}} a
left join {{ ref('stg_orderdetails')}} b
on a.order_id = b.order_id