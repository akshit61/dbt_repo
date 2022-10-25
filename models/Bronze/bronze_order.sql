{{
    config(
        materialized = "table",
        file_format = "delta"
    )
}}

{% for order_id in range(1,101) %}
    select
        {{ order_id}} as Order_id,
        current_timestamp() as Order_datetime
        {% if not loop.last %}
        Union all
        {% endif %}
{% endfor %}