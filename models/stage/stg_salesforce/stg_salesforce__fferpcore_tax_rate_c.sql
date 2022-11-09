
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_tax_rate_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_rate_c,
        fferpcore_start_date_c,
        fferpcore_tax_code_c,
        fferpcore_uniqueness_constraint_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
