
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_exchange_rate_entry_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_end_date_c,
        fferpcore_exchange_rate_group_c,
        fferpcore_exchange_rate_type_c,
        fferpcore_relative_currency_c,
        fferpcore_start_date_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
