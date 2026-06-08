select
    order_id,
    order_date,
    promised_date,
    actual_delivery_date,
    carrier,
    region,
    order_type,
    status,
    on_time,
    freight_cost,
    weight_kg,
    customer_id
from sooper.raw.datatable
