
with source as (

    select * from {{ source('raw_netsuite', 'training_subscribers') }}

),

renamed as (

    select
        customer_email,
        customer_record_updated_end,
        customer_record_updated_start,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        partner_training_end_date,
        partner_training_start_date,
        subscription_end_date,
        subscription_start_date,
        training_subscribers_extid,
        training_subscribers_id

    from source

)

select * from renamed
