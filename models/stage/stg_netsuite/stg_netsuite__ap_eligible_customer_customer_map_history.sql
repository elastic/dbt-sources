
with source as (

    select * from {{ source('raw_netsuite', 'ap_eligible_customer_customer_map_history') }}

),

renamed as (

    select
        ap_eligible_customer_id,
        customer_id

    from source

)

select * from renamed
