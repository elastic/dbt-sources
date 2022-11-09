
with source as (

    select * from {{ source('raw_salesforce', 'copadoccmint_field_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        copadoccmint_salesforce_field_name_c,
        copadoccmint_third_party_field_name_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
