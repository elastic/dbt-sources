
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_currency_exchange_rate_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        appirio_core_currency_c,
        appirio_core_currency_code_c,
        appirio_core_effective_date_c,
        appirio_core_expiration_date_c,
        appirio_core_is_test_c,
        appirio_core_is_void_c,
        appirio_core_next_effective_date_c,
        appirio_core_rate_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
