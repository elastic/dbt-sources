
with source as (

    select * from {{ source('raw_netsuite', 'payment_aggregation_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_aggregation_extid,
        payment_aggregation_id,
        payment_aggregation_name,
        transaction_field_id

    from source

)

select * from renamed
