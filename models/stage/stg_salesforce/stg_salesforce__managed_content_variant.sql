
with source as (

    select * from {{ source('raw_salesforce', 'managed_content_variant') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_published,
        language,
        last_modified_by_id,
        last_modified_date,
        managed_content_key,
        name,
        system_modstamp,
        url_name,
        variant_type

    from source

)

select * from renamed
