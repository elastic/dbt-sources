
with source as (

    select * from {{ source('raw_netsuite_sa', 'training_subscribers') }}

),

renamed as (

    select
        training_subscribers_id,
        _fivetran_deleted,
        _fivetran_synced,
        customer_email,
        customer_record_updated_end,
        customer_record_updated_start,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        partner_training_end_date,
        partner_training_start_date,
        subscription_end_date,
        subscription_start_date,
        training_subscribers_extid

    from source

)

select * from renamed
