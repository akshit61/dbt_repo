with silver_order as(
    select
        Order_id,
        date(Order_datetime) as Order_date,
        year(Order_datetime) as Year,
        month(Order_datetime) as Month,
        day(Order_datetime) as Order_day_of_month
    from {{ref('bronze_order')}}
)
select * from silver_order