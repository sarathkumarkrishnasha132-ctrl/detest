select
    upper(order_id) as order_id,
    cast(order_date as date) as order_date,
    trim(carrier) as carrier,
    
    case
        when on_time = 1 then 'On Time'
        else 'Late'
    end as delivery_status,

    freight_cost,
    weight_kg

from {{ source('nex', 'datatable') }}