
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_exchange_rate_history_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_end_date_c,
        fferpcore_group_c,
        fferpcore_rate_c,
        fferpcore_rate_currency_c,
        fferpcore_rate_type_c,
        fferpcore_relative_currency_c,
        fferpcore_start_date_c,
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
