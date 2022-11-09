
with source as (

    select * from {{ source('raw_netsuite', 'transaction_cost_components_history') }}

),

renamed as (

    select
        amount,
        cost_category,
        item_id,
        quantity,
        standard_cost,
        transaction_id,
        transaction_line

    from source

)

select * from renamed
