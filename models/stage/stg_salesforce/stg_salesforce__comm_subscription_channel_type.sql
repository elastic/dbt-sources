
with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_channel_type') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        communication_subscription_id,
        created_by_id,
        created_date,
        currency_iso_code,
        engagement_channel_type_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
