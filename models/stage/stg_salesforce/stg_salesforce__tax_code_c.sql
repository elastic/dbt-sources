
with source as (

    select * from {{ source('raw_salesforce', 'tax_code_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        description_c,
        internal_id_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        rate_c,
        subsidiary_c,
        system_modstamp

    from source

)

select * from renamed
