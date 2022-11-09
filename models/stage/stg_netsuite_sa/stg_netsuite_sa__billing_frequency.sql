
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_frequency') }}

),

renamed as (

    select
        billing_frequency_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_frequency_extid,
        billing_frequency_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        process_billing_events

    from source

)

select * from renamed
