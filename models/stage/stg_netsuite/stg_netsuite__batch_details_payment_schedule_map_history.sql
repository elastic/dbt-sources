
with source as (

    select * from {{ source('raw_netsuite', 'batch_details_payment_schedule_map_history') }}

),

renamed as (

    select
        batch_details_id,
        payment_schedule_id

    from source

)

select * from renamed
