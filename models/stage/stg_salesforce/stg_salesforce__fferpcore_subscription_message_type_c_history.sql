
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_subscription_message_type_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_message_type_c,
        fferpcore_subscription_c,
        fferpcore_uniqueness_constraint_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
