
with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_channel_type_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comm_subscription_channel_type_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        communication_subscription_id,
        currency_iso_code,
        engagement_channel_type_id,
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