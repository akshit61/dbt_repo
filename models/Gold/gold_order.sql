with gold_order as (
    select
        count(order_id) as Order_count
    from {{ ref('bronze_order')}}
)

select * from gold_order