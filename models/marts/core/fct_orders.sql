
    select sc.order_id, sc.customer_id
    from {{ref('stg_customers')}} sc
    join 
    (
        select order_id,amount
        from {{ref('stg_payments')}}
        where status = 'success'
    ) sp on sc.order_id = sp.order_id


